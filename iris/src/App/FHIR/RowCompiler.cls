/// Compile the document's declarative row/column meanings into deterministic mapping rules.
Class App.FHIR.RowCompiler Extends %RegisteredObject
{
ClassMethod Compile(definitionJSON As %String, analysisJSON As %String = "{}") As %String [ Language = python ]
{
    import json,copy,hashlib,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        definition=json.loads(definitionJSON);analysis=json.loads(analysisJSON)
        model=iris.cls('App.FHIR.ModelCatalog').Context()
        rules=copy.deepcopy((definition.get('fhirMapping') or {}).get('rules',[]));issues=[];defaults=[]
        tables=definition.get('tableTypeDefinitions',definition.get('tables',[]));covered=set();ids={r['id'] for r in rules}
        for rule in rules:
            selector=rule['selector']
            if selector['kind']=='tableType':covered.add(selector['code'])
            elif selector['kind']=='group' and rule['repeat'] in ('table','row'):
                covered.update(next((g['tables'] for g in definition.get('tableGroups',[]) if g['code']==selector['code']),[]))
            elif selector['kind']=='table':
                for page in analysis.get('pages',[]):
                    for table in page['tables']:
                        if page['page']==selector['page'] and table['id']==selector['table']:
                            kind=((table.get('result') or {}).get('expectedStructure') or {}).get('tableType') or {}
                            if kind.get('code'):covered.add(kind['code'])
            elif selector['kind']=='header':
                for table in tables:
                    meaning=table['schema'].get('rowMapping')
                    if table['schema'].get('kind')=='label-value' and meaning and rule['resourceType']==meaning['resourceType']:covered.add(table['code'])
        def issue(table,message,severity='error',column=''):
            issues.append({'tableCode':table['code'],'tableName':table['name'],'column':column,'severity':severity,'message':message})
        def scalar(node):
            kind=node['types'][0] if len(node['types'])==1 else ''
            return {'decimal':'number','integer':'integer','positiveInt':'integer','unsignedInt':'integer','boolean':'boolean','date':'date','dateTime':'iso-dateTime','instant':'iso-dateTime'}.get(kind,'text')
        def field(target,source,transform='text',required=False,unit=''):
            return {'target':target,'source':source,'transform':transform,'required':required,'unitColumn':unit,'dateFormat':'iso'}
        work=[]
        for table in tables:
            information=table['schema'].get('informationMapping')
            if information is None:work.append(table);continue
            for resource in information['resources']:
                candidate=copy.deepcopy(table);candidate['_resourceId']=resource['id'];candidate['name']=table['name']+' · '+resource['name']
                candidate['schema']['rowMapping']={'resourceType':resource['resourceType'],'defaults':resource.get('defaults',[]),
                    'columns':[{k:v for k,v in m.items() if k!='resourceId'} for m in information['columns'] if m['resourceId']==resource['id']]}
                work.append(candidate)
        for table in work:
            if table['code'] in covered:continue
            schema=table['schema'];meaning=schema.get('rowMapping')
            if schema.get('kind')=='unclassified':
                issue(table,'Confirme la estructura de la tabla antes de generar recursos FHIR.');continue
            if not meaning:
                issue(table,'La tabla no tiene definido el recurso de cada fila.', 'warning');continue
            if not meaning['columns'] and not meaning.get('defaults'):
                issue(table,'No hay columnas FHIR asignadas.');continue
            resource=meaning['resourceType'];fields=[];bad=False;by_key={c['key']:c for c in schema['columns']};mappings=[m for m in meaning['columns'] if m.get('target','').strip()];used=set();applied=[]
            if not mappings and not meaning.get('defaults'):
                issue(table,'Seleccione las columnas relevantes y sus destinos FHIR.');continue
            for mapping in mappings:
                key=mapping['key'];target=mapping['target'];kind=mapping['dataType'];column=by_key.get(key)
                if not column:issue(table,'La columna asignada ya no existe.',column=key);bad=True;continue
                # Units are consumed by their Quantity, avoiding a parent/child overwrite.
                parent=target[:-5] if target.endswith('.unit') else ''
                if parent and any((m['target']==parent and m['dataType']=='Quantity') or ('[x]' in m['target'] and m['target'].replace('[x]','Quantity')==parent) for m in mappings):used.add(key);continue
                node=model.resolve(resource,target);source={'kind':'column','key':key,'row':None};unit=''
                if '[x]' in target:
                    if not {'Quantity','string'}<=set(node['types']):issue(table,'Seleccione un tipo concreto para '+target+'.',column=key);bad=True;continue
                    transform='auto-value'
                    quantity_path=target.replace('[x]','Quantity')
                    unit=next((m['key'] for m in mappings if m['target']==quantity_path+'.unit'),'')
                elif kind=='Quantity':
                    transform='quantity';unit=next((m['key'] for m in mappings if m['target']==target+'.unit'),'')
                elif kind in ('CodeableConcept','HumanName','Address'):
                    target+='.text';transform='text'
                elif kind=='Identifier':target+='.value';transform='text'
                elif kind=='Reference':target+='.display';transform='text'
                elif kind=='Range':transform='range'
                elif kind=='BackboneElement':
                    try:child=model.resolve(resource,target+'.text')
                    except ValueError:child=None
                    if child and len(child['types'])==1 and child['types'][0] in ('string','markdown'):target+='.text';transform='text'
                    else:issue(table,'El elemento '+target+' necesita asignaciones de sus subcampos.',column=key);bad=True;continue
                elif kind in ('Ratio','Period','Timing','Attachment','CodeableReference','BackboneElement','SampledData'):
                    issue(table,'El tipo '+kind+' necesita asignaciones de sus subcampos.',column=key);bad=True;continue
                else:transform=scalar(node)
                assignment=field(target,source,transform,column['required'],unit)
                assignment['dateFormat']=mapping.get('dateFormat','iso')
                fields.append(assignment);used.add(key)
            for constant in meaning.get('defaults',[]):
                node=model.resolve(resource,constant['target'])
                fields.append(field(constant['target'],{'kind':'constant','value':constant['value']},scalar(node),True))
            # Use an explicit unknown value only when the required R5 code set permits it.
            for prop in model.describe(resource)['fields']:
                path=prop['path']
                if '.' in path or '[' in path or not prop['required'] or prop['types']!=['code'] or 'unknown' not in prop.get('codes',[]):continue
                if any(f['target']==path for f in fields):continue
                fields.append(field(path,{'kind':'constant','value':'unknown'},required=True))
                applied.append({'tableCode':table['code'],'target':path,'value':'unknown','reason':'No hay valor declarado y el conjunto R5 permite indicar desconocido.'})
            if bad:continue
            identity=table['code']+'|'+str(table['version'])+('|'+table['_resourceId'] if '_resourceId' in table else '')
            ident='row-'+hashlib.sha256(identity.encode()).hexdigest()[:16]
            while ident in ids:ident+='x'
            ids.add(ident)
            candidate={'id':ident,'resourceType':resource,'repeat':'row','selector':{'kind':'tableType','code':table['code'],'version':table['version']},'filter':None,'fields':fields}
            checked=json.loads(iris.cls('App.FHIR.Mapping').Validate(json.dumps({'enabled':False,'rules':[candidate]}),definitionJSON))
            if not checked['ok']:issue(table,checked['error']);continue
            rules.append(candidate);defaults.extend(applied)
        configuration={'enabled':False,'rules':rules}
        # Physical tables without a verified template remain visible in the final report.
        for page in analysis.get('pages',[]):
            for table in page['tables']:
                template=((table.get('result') or {}).get('expectedStructure') or {}).get('tableType')
                if not template:issues.append({'severity':'warning','page':page['page'],'table':table['id'],'message':'La tabla no tiene una estructura confirmada para generar recursos.'})
        return {'configuration':configuration,'issues':issues,'defaults':defaults,'ruleCount':len(rules),'source':'document-row-meanings-and-advanced-rules'}
    return runtime.stage_envelope(run)
}
}
