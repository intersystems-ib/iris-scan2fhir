Class App.Interop.TableReconstruction Extends %RegisteredObject
{
ClassMethod PreparePage(pageJSON As %String, definitionJSON As %String) As %String [ Language = python ]
{
    import json,re,unicodedata,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        page=json.loads(pageJSON);definition=json.loads(definitionJSON) if definitionJSON else None
        if not definition:return {'enabled':False,'jobs':[]}
        types={(t['code'],t['version']):t for t in definition['tableTypeDefinitions'] if t['schema'].get('pageScope')!='first' or page['page']==1}
        facts=json.loads(iris.cls('App.Interop.TableStructure').Facts(json.dumps([page])))
        signatures={t['id']:t['signature'] for t in facts['tables']}
        patterns=definition.get('tablePatterns',definition.get('generation',{}).get('tableBindings',[]))
        def norm(v):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c)).split()).strip(' :.');
        aliases={role:{norm(v) for v in values} for role,values in definition['headerAliases'].items()}
        jobs=[];previous=None;grid_previous=page.get('previousLayout')
        grid_types={key:t for key,t in types.items() if t['schema'].get('kind')=='grid'}
        for ti,match in enumerate(re.finditer(r'<table\b[^>]*>.*?</table>',page.get('markdown',''),re.I|re.S),1):
            table_id=f't{ti}';signature=signatures.get(f'p{page["page"]}t{ti}');reason='';selection='signature'
            if grid_types:
                aligned=json.loads(iris.cls('App.Interop.GridTables').Normalize(json.dumps({'html':match.group(),'previousLayout':grid_previous,'headerAliases':definition['headerAliases']})))
                clinical_continuation=aligned['httpStatus']==200 and aligned['result'].get('clinicalContinuation')
                label_matches=[]
                for key,t in types.items():
                    if clinical_continuation:break
                    if t['schema'].get('kind')!='label-value':continue
                    packet=json.loads(iris.cls('App.Interop.LabelValueTables').Normalize(json.dumps({'html':match.group(),'definition':definition,'tableType':{'code':key[0],'version':key[1]}})))
                    if packet['httpStatus']==200 and packet['result']['matchedFields']:
                        if t['schema'].get('labelMatchMode')=='all' and packet['result']['matchedFields']<len(t['schema']['labelFields']):continue
                        label_matches.append(key)
                located={(p['code'],p['version']) for p in patterns if p.get('page')==page['page'] and p.get('table')==ti and (p['code'],p['version']) in label_matches}
                if len(located)==1:label_matches=list(located)
                if label_matches:
                    if len(label_matches)==1:
                        key=label_matches[0];jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(),'selection':'label-value','reason':'','input':{'tableType':{'code':key[0],'version':key[1]}}})
                    else:jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(),'selection':'header-candidate','input':None,'reason':'Varias tablas informativas coinciden. Revise las etiquetas.'})
                    continue
                if aligned['httpStatus']!=200:
                    jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(),'input':None,'reason':aligned['error']});grid_previous=None;continue
                structure=aligned['result']['layout'];grid_previous=structure
                if not structure['headerless']:
                    matches={key for key,t in grid_types.items() if not t['schema']['grid']['headerless'] and [norm(h) for h in t['schema']['grid']['headers']]==[norm(h) for h in structure['headers']]}
                else:
                    matches={(p['code'],p['version']) for p in patterns if p.get('page')==page['page'] and p.get('table')==ti and (p['code'],p['version']) in grid_types and grid_types[p['code'],p['version']]['schema']['grid']['headerless'] and grid_types[p['code'],p['version']]['schema']['grid']['width']==structure['width']}
                if len(matches)==1:
                    key=next(iter(matches));jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(),'selection':'header-grid','reason':'','input':{'tableType':{'code':key[0],'version':key[1]}}})
                else:jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(),'selection':'unmatched-grid','input':None,'reason':'No hay una estructura única de cabeceras y columnas para esta tabla.'})
                continue
            matches={(p['code'],p['version']) for p in patterns if signature and p.get('signature')==signature and (p['code'],p['version']) in types}
            locations={(p['code'],p['version']) for p in patterns if p.get('page')==page['page'] and p.get('table')==ti and (p['code'],p['version']) in types and types[p['code'],p['version']]['schema'].get('kind')!='label-value' and not types[p['code'],p['version']]['schema']['producesResults']}
            if not matches and len(locations)==1:
                key=next(iter(locations));jobs.append({'id':table_id,'index':ti,'sourceHtml':match.group(0),'selection':'positional','reason':'','input':{'tableType':{'code':key[0],'version':key[1]}}});previous=None;continue
            raw=match.group(0)
            indexed=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':raw,'mode':'deterministic'})))
            if indexed['httpStatus']!=200:
                jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'input':None,'reason':indexed['error']});continue
            cells=indexed['result']['sourceCells']
            clinical_roles={role for c in cells.values() if c['row']<=3 for role,values in aliases.items() if norm(c['text']) in values}
            label_matches=[]
            for key,template in types.items():
                if template['schema'].get('kind')!='label-value' or (template['schema'].get('pageScope')=='first' and page['page']!=1):continue
                binding={'code':key[0],'version':key[1]}
                normalized=json.loads(iris.cls('App.Interop.LabelValueTables').Normalize(json.dumps({'html':raw,'definition':definition,'tableType':binding})))
                if normalized['httpStatus']==200 and normalized['result']['matchedFields']:
                    if template['schema'].get('labelMatchMode')=='all' and normalized['result']['matchedFields']<len(template['schema']['labelFields']):continue
                    label_matches.append(key)
            if len(label_matches)>1 and all(types[k]['schema'].get('labelMatchMode')=='all' for k in label_matches):
                largest=max(len(types[k]['schema']['labelFields']) for k in label_matches)
                label_matches=[k for k in label_matches if len(types[k]['schema']['labelFields'])==largest]
            if label_matches and {'name','value'}<=clinical_roles:
                jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'selection':'header-candidate','input':None,'reason':'La tabla mezcla etiquetas administrativas y cabeceras de resultados. Revise su estructura.'});previous=None;continue
            if len(label_matches)==1:
                key=label_matches[0];binding={'code':key[0],'version':key[1]}
                jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'selection':'label-value','reason':'','input':{'tableType':binding}})
                continue
            if len(label_matches)>1:
                jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'selection':'header-candidate','input':None,'reason':'Varias definiciones de etiquetas y valores coinciden. Revise la tabla.'});previous=None;continue
            roles=[]
            if not matches and signature:
                # Manual definitions without learned patterns can match a complete, unique header schema.
                roles=[]
                for cell in cells.values():
                    if cell['row']>3:continue
                    found=[role for role,values in aliases.items() if norm(cell['text']) in values]
                    if len(found)==1:roles.append({'name':'test'}.get(found[0],found[0]))
                matches={key for key,t in types.items() if t['schema'].get('kind')!='label-value' and [c['role'] for c in t['schema']['columns']]==roles}
                selection='header-schema'
            if not matches and not roles:
                rows={r:[c for c in cells.values() if c['row']==r] for r in {c['row'] for c in cells.values()}}
                pairs=[row for row in rows.values() if len(row)==2 and row[0]['text'].strip() and row[1]['text'].strip()]
                labelled=any(re.search(r'[:：]\s*$',c['text']) for c in cells.values())
                mixed=any(re.search(r'\d{1,4}[-/]\w+[-/]\d{1,4}',row[1]['text']) for row in pairs) and any(re.search(r'[A-Za-z]{3}',row[1]['text']) for row in pairs)
                if labelled or (len(pairs)>=2 and mixed):
                    jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'selection':'header-candidate','input':None,'reason':'Posible tabla de información sin cabecera de columnas. Configure sus etiquetas y valores antes de extraerla.'})
                    previous=None;continue
            if not matches and not signature:
                selection='continuation'
                allowed={key for key,t in types.items() if t['schema']['allowMissingHeaders'] and t['schema']['producesResults']}
                if previous in allowed:matches={previous}
                elif len(allowed)==1:matches=allowed
            if len(matches)!=1:
                reason='No hay una plantilla única verificable para esta tabla.'
                jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'input':None,'reason':reason});previous=None;continue
            key=next(iter(matches));previous=key
            binding={'code':key[0],'version':key[1]}
            jobs.append({'id':table_id,'index':ti,'sourceHtml':raw,'selection':selection,'reason':'','input':{'html':raw,'documentDefinitionId':int(definition['id']),
                         'tableType':binding,'context':{'page':page['page'],'table':table_id,'origin':definition['laboratory'],'selection':selection}}})
        for job in jobs:
            derived=next((d for d in page.get('derivedTables',[]) if d['id']==job['id']),None)
            if derived:job['sourceDerivation']=derived
        return {'enabled':True,'definitionId':definition['id'],'definitionVersion':definition['version'],'jobs':jobs}
    return runtime.stage_envelope(run)
}
}
