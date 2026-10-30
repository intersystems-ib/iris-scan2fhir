/// Discover owned document tables from OCR structure. No resource meanings or patient values are learned.
Class App.Interop.DocumentDiscovery Extends %RegisteredObject
{
/// An existing format may be reused only if every detected table has a binding.
ClassMethod Covers(pagesJSON As %String, definitionJSON As %String) As %Boolean [ Language = python ]
{
    import json,iris
    packet=json.loads(iris.cls('App.Interop.DocumentContent').Clean(pagesJSON))
    if packet['httpStatus']!=200:return False
    count=0;previous=None;definition=json.loads(definitionJSON)
    for page in packet['result']['pages']:
        prepared=json.loads(iris.cls('App.Interop.TableReconstruction').PreparePage(json.dumps({**page['content'],'page':page['page'],'previousLayout':previous}),definitionJSON))
        if prepared['httpStatus']!=200:return False
        for job in prepared['result']['jobs']:
            count+=1
            if not job.get('input'):return False
            binding=job['input']['tableType']
            learned=next((p for p in definition.get('generation',{}).get('tableBindings',[]) if p.get('page')==page['page'] and p.get('table')==job['index']),None)
            template=next(t for t in definition['tableTypeDefinitions'] if t['code']==binding['code'] and t['version']==binding['version'])
            learned_type=next((t for t in definition['tableTypeDefinitions'] if learned and (t['code'],t['version'])==(learned['code'],learned['version'])),None)
            if learned_type and learned_type['schema'].get('kind')=='label-value' and template['schema'].get('kind')=='grid':return False
            if template['schema'].get('kind')=='grid':
                normalized=json.loads(iris.cls('App.Interop.GridTables').Normalize(json.dumps({'html':job['sourceHtml'],'template':template,'previousLayout':previous})))
                if normalized['httpStatus']!=200 or any(not issue['sourceCells'] for issue in normalized['result']['issues']):return False
                previous=normalized['result']['layout']
            elif template['schema']['producesResults']:
                normalized=json.loads(iris.cls('App.Interop.DeterministicTables').Normalize(json.dumps({'html':job['sourceHtml'],'definition':definition,'tableType':binding,'previousLayout':previous})))
                if normalized['httpStatus']!=200:return False
                result=normalized['result'];previous=result.get('layout')
                value_columns=[i for i,c in enumerate(result['columns']) if c['role']=='value']
                if not any(any(row[i]['text'].strip() for i in value_columns if i<len(row)) for row in result['rows']):return False
            elif template['schema'].get('kind')!='label-value':previous=None
    return count>0
}

ClassMethod Labels(cellsJSON As %String) As %String [ Language = python ]
{
    import json,re,unicodedata,iris
    cells=json.loads(cellsJSON)
    def norm(v):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c)).split()).strip(' :.')
    presets=json.loads(iris.cls('App.Catalog.HeaderPresets').JSON())
    known={norm(a) for p in presets for f in p['configuration']['fields'] for a in f['aliases']}
    labels=[];seen=set()
    for c in cells.values():
        text=c['text'].strip();found=[]
        for match in re.finditer(r'(?:^|\n)([^\d:：\n][^:：\n]{0,119})[:：]',text):found.append(match[1].strip())
        if norm(text) in known:found.append(text.strip(' :'))
        for label in found:
            if 1<=len(label)<=120 and norm(label) not in seen:seen.add(norm(label));labels.append(label)
    return json.dumps(labels,ensure_ascii=False)
}

ClassMethod Discover(pagesJSON As %String, classificationJSON As %String, requestId As %String, interopSessionId As %String = "") As %String [ Language = python ]
{
    import json,re,hashlib,unicodedata,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        original=json.loads(pagesJSON);classification=json.loads(classificationJSON)
        catalog=json.loads(iris.cls('App.Catalog.Repository').SnapshotJSON())
        clean=json.loads(iris.cls('App.Interop.DocumentContent').Clean(pagesJSON))
        if clean['httpStatus']!=200:raise runtime.ProcessingError(clean['error'])
        pages=[{**p,**p.get('content',{})} for p in clean['result']['pages']]
        def norm(v):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c)).split()).strip(' :.');
        aliases=json.loads(iris.cls('App.Interop.TableStructure').HeaderAliases())
        origin=classification.get('discoveryLaboratory') or classification.get('origin','unknown')
        lab=next((l for l in catalog['laboratories'] if l['code']==origin and l['enabled']),None)
        if classification.get('discoveryLaboratory') and not lab:raise runtime.ProcessingError('Seleccione un laboratorio activo para el descubrimiento.')
        if not lab:
            identified=json.loads(iris.cls('App.Interop.DocumentIdentifier').Identify(pagesJSON,json.dumps(catalog)))
            if identified['httpStatus']==200:
                origin=identified['result']['origin'];lab=next((l for l in catalog['laboratories'] if l['code']==origin and l['enabled']),None)
        known_lab=lab is not None
        if not lab:lab=next((l for l in catalog['laboratories'] if l['code']=='unidentified'),{'code':'unidentified','name':'Laboratorio por identificar','enabled':False,'revision':0})
        peers=[d for d in catalog['documents'] if d['laboratory']==lab['code'] and d['isLatest']]
        for d in peers:
            for role,values in d['headerAliases'].items():aliases[role]=list(dict.fromkeys([*aliases[role],*values]))[:30]
        tables=[];shapes={};bindings=[];previous=None
        def base(columns):return {'columns':columns,'producesResults':False,'allowSplitRows':False,'allowMissingHeaders':True,'allowCombinedValueUnit':False,'allowMultilineReferences':False}
        for page in pages:
            for ti,match in enumerate(re.finditer(r'<table\b[^>]*>.*?</table>',page.get('markdown',''),re.I|re.S),1):
                raw=match.group()
                prior=previous
                result=json.loads(iris.cls('App.Interop.GridTables').Normalize(json.dumps({'html':raw,'previousLayout':previous,'headerAliases':aliases})))
                if result['httpStatus']!=200:raise runtime.ProcessingError(result['error'])
                normalized=result['result'];structure=normalized['layout'];previous=structure
                schema=base([{k:c[k] for k in ('key','label','role','group','required','valueType')} for c in normalized['columns']])
                schema.update(kind='grid',grid={k:structure[k] for k in ('headers','spans','width','headerless')})
                fields=json.loads(iris.cls('App.Interop.InformationTables').Fields(raw))
                informative=len(fields)>=2 and not normalized.get('clinicalContinuation')
                if informative:
                    schema=base([{'key':f['key'],'label':f['label'],'role':'note','group':f['group'],'required':False,'valueType':'text'} for f in fields])
                    schema.update(kind='label-value',labelFields=fields,stopLabels=[],pageScope='first' if page['page']==1 else 'all')
                key=('raw:'+str(page['page'])+':'+str(ti)) if structure['headerless'] else 'headers:'+json.dumps([norm(h) for h in structure['headers']])
                name=('Cuadrícula sin cabecera ' if structure['headerless'] else 'Tabla · '+structure['headers'][0]+' · ')+str(len(tables)+1)
                if informative:
                    key='labels:'+json.dumps([norm(f['label']) for f in fields]);name='Información del documento · '+str(len(tables)+1)
                if key not in shapes:
                    if len(tables)>=20:raise runtime.ProcessingError('El documento contiene más de 20 estructuras de tabla distintas; revise el formato antes de registrarlo.')
                    code='table-'+str(len(tables)+1);shapes[key]=code;tables.append({'code':code,'version':1,'name':name,'schema':schema})
                code=shapes[key]
                if informative:previous=prior
                bindings.append({'page':page['page'],'table':ti,'code':code,'version':1})
        if not tables:raise runtime.ProcessingError('El OCR no ha devuelto tablas HTML que se puedan registrar. Se necesita revisar el documento.')
        fingerprint=hashlib.sha256(json.dumps(sorted(shapes),ensure_ascii=False).encode()).hexdigest()[:16]
        code='grid-'+fingerprint if known_lab else 'grid-'+re.sub('[^a-zA-Z0-9]','',requestId).lower()[:24]
        existing=next((d for d in peers if d['code']==code),None)
        if existing:return {'definitionSnapshot':existing,'discovery':{'status':'existing-draft','tableCount':len(tables),'laboratoryIdentified':known_lab}}
        issuer=list(dict.fromkeys(s for d in peers for s in d['recognition']['issuerPhrases']))[:30] or [lab['name']]
        recognition={'issuerPhrases':issuer,'domains':list(dict.fromkeys(s for d in peers for s in d['recognition']['domains']))[:30],'documentPhrases':[],'headerMode':'issuer-laboratory'}
        document={'laboratory':lab['code'],'code':code,'name':('Formato detectado · '+lab['name'])[:160] if known_lab else 'Documento por clasificar · '+code[-6:],'enabled':known_lab,'baseVersion':0,'recognition':recognition,'headerAliases':aliases,'tableTypes':[{'code':t['code'],'version':1} for t in tables],'tables':tables,'tableGroups':[],'fhirMapping':{'enabled':False,'rules':[]}}
        generation={'mode':'automatic','strategy':'header-grid-v2','requestId':requestId,'interopSessionId':interopSessionId,'tableBindings':bindings,'status':'needs-configuration','laboratoryIdentified':known_lab}
        lab_input='' if any(l['code']==lab['code'] for l in catalog['laboratories']) else json.dumps({'code':lab['code'],'name':lab['name'],'enabled':False,'baseRevision':0})
        saved=json.loads(iris.cls('App.Catalog.Repository').SaveDiscovery(lab_input,json.dumps(document,ensure_ascii=False),json.dumps(generation)))
        if not saved['ok']:raise runtime.ProcessingError(saved['error'],saved.get('httpStatus',422))
        return {'definitionSnapshot':saved['definition'],'discovery':{'status':'detected','tableCount':len(tables),'laboratoryIdentified':known_lab}}
    return runtime.stage_envelope(run)
}
}
