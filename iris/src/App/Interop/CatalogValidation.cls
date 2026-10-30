Class App.Interop.CatalogValidation Extends %RegisteredObject
{
ClassMethod Validate(kind As %String, inputJSON As %String) As %String [ Language = python ]
{
    import json,re,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def fail(message):raise runtime.ProcessingError(message)
    def code(value):
        if not isinstance(value,str) or not re.fullmatch(r'[a-z][a-z0-9-]{0,63}',value):fail('Use un código en minúsculas, números y guiones, comenzando por una letra.')
        return value
    def text(value):
        if not isinstance(value,str) or not 1<=len(value.strip())<=160:fail('El nombre debe tener entre 1 y 160 caracteres.')
        return value.strip()
    def boolean(value):
        if type(value) is not bool:fail('Indique un valor booleano válido.')
        return value
    def number(value):
        if type(value) is not int or not 0<=value<=100000:fail('Versión de referencia no válida.')
        return value
    def strings(values):
        if not isinstance(values,list) or len(values)>30 or any(not isinstance(v,str) or not 1<=len(v.strip())<=180 for v in values):fail('Indique una lista de textos cortos, sin elementos vacíos.')
        return list(dict.fromkeys(v.strip() for v in values))
    def header_configuration(value):
        if not isinstance(value,dict) or set(value)!={'fields','stopLabels'}:fail('Configuración de cabecera incompatible.')
        value['stopLabels']=strings(value['stopLabels'])
        if not isinstance(value['fields'],list) or len(value['fields'])>64:fail('Defina hasta 64 campos de cabecera.')
        keys=set();aliases=set()
        for field in value['fields']:
            if not isinstance(field,dict) or set(field)!={'key','label','group','aliases','required','valueType'}:fail('Definición de campo de cabecera incompatible.')
            if not isinstance(field['key'],str) or not re.fullmatch(r'[A-Za-z][A-Za-z0-9_-]{0,63}',field['key']) or field['key'] in keys:fail('Los códigos de campo deben ser válidos y únicos.')
            keys.add(field['key']);text(field['label']);code(field['group']);boolean(field['required'])
            if field['valueType'] not in ('text','numeric'):fail('Tipo de valor de cabecera no válido.')
            field['aliases']=strings(field['aliases'])
            if not field['aliases']:fail('Cada campo necesita alguna etiqueta OCR.')
            names={' '.join(alias.casefold().split()) for alias in field['aliases']}
            if names & aliases:fail('Una misma etiqueta OCR no puede identificar dos campos.')
            aliases.update(names)
        return value
    def run():
        try:data=json.loads(inputJSON)
        except ValueError:fail('El contenido no es JSON válido.')
        if not isinstance(data,dict):fail('Se requiere un objeto de configuración.')
        if kind=='laboratory':
            if set(data)-{'recognitionAliases'}!={'code','name','enabled','baseRevision'}:fail('Campos de laboratorio incompatibles.')
            result={'code':code(data['code']),'name':text(data['name']),'enabled':boolean(data['enabled']),'baseRevision':number(data['baseRevision'])}
            if 'recognitionAliases' in data:result['recognitionAliases']=strings(data['recognitionAliases'])
            return result
        if kind=='table-type':
            if set(data)!={'code','name','schema','baseVersion'}:fail('Campos de tipo de tabla incompatibles.')
            schema=data['schema']
            fields={'columns','allowSplitRows','allowMissingHeaders','allowCombinedValueUnit','allowMultilineReferences','producesResults'}
            if not isinstance(schema,dict) or not fields<=set(schema) or set(schema)-fields-{'fhir','rowMapping','informationMapping','kind','pageScope','labelFields','stopLabels','labelMatchMode','grid'}:fail('Estructura del tipo de tabla incompatible.')
            if schema.get('kind','records') not in ('records','label-value','unclassified','grid') or schema.get('pageScope','all') not in ('first','all') or schema.get('labelMatchMode','any') not in ('all','any'):fail('Tipo o alcance de tabla no válido.')
            if schema.get('kind')=='label-value':
                config=header_configuration({'fields':schema.get('labelFields',[]),'stopLabels':schema.get('stopLabels',[])})
                if not config['fields']:fail('Defina al menos un campo de la tabla de etiquetas y valores.')
                schema['labelFields']=config['fields'];schema['stopLabels']=config['stopLabels']
                schema['columns']=[{'key':f['key'],'label':f['label'],'role':'note','group':f['group'],'required':f['required'],'valueType':f['valueType']} for f in config['fields']]
                schema['producesResults']=False
            for key in fields-{'columns'}:boolean(schema[key])
            association=schema.get('fhir')
            if association is not None:
                if not isinstance(association,dict) or set(association)!={'resourceType','dataType','target'} or any(not isinstance(v,str) for v in association.values()):fail('Asociación FHIR de tabla incompatible.')
                model=iris.cls('App.FHIR.ModelCatalog').Context()
                if association['resourceType'] not in model.resources or association['resourceType']=='Bundle':fail('Seleccione un recurso FHIR válido para la tabla.')
                if bool(association['dataType'])!=bool(association['target']):fail('El tipo de dato de la tabla necesita su campo de destino FHIR.')
                if association['target']:
                    try:node=model.resolve(association['resourceType'],association['target'])
                    except ValueError as exc:fail(str(exc))
                    if association['target']=='id' or '[x]' in association['target'] or association['dataType'] not in node['types'] or association['dataType'] not in {t['name'] for t in model.data_types}:fail('El campo FHIR no admite el tipo de dato seleccionado para la tabla.')
            columns=schema['columns']
            if not isinstance(columns,list) or not 1<=len(columns)<=(64 if schema.get('kind') in ('label-value','unclassified','grid') else 16):fail('Número de columnas no válido para esta tabla.')
            if schema.get('kind')=='grid':
                grid=schema.get('grid')
                if not isinstance(grid,dict) or set(grid)!={'headers','spans','width','headerless'}:fail('Defina la cuadrícula de cabeceras y columnas.')
                if type(grid['width']) is not int or not 1<=grid['width']<=6400 or type(grid['headerless']) is not bool or not isinstance(grid['headers'],list) or not isinstance(grid['spans'],list) or len(grid['headers'])!=len(columns) or len(grid['spans'])!=len(columns):fail('Cuadrícula de columnas incompatible.')
                for title in grid['headers']:text(title)
                end=0
                for band in grid['spans']:
                    if not isinstance(band,dict) or set(band)!={'start','end'} or type(band['start']) is not int or type(band['end']) is not int or band['start']<end or not band['start']<band['end']<=grid['width']:fail('Los intervalos de columnas deben estar ordenados y no solaparse.')
                    end=band['end']
            keys=set();roles=[]
            for col in columns:
                # Accept historical documents while retiring the redundant inclusion switch.
                if isinstance(col,dict):col.pop('useForFHIR',None)
                if not isinstance(col,dict) or not {'key','label','role','group','required'}<=set(col) or set(col)-{'key','label','role','group','required','valueType'}:fail('Definición de columna incompatible.')
                if col.get('valueType','auto') not in ('numeric','text','auto'):fail('Tipo de valor no válido: use numérico, texto o mixto.')
                if schema.get('kind')!='label-value':code(col['key'])
                text(col['label']);boolean(col['required'])
                if col['key'] in keys:fail('Los códigos de columna deben ser únicos.')
                if col['role'] not in ('test','value','unit','referenceRange','note'):fail('Función de columna no válida.')
                if not isinstance(col['group'],str):fail('Grupo de medida no válido.')
                if col['group']:code(col['group'])
                keys.add(col['key']);roles.append(col['role'])
            if schema['producesResults'] and not {'test','value'}<=set(roles):fail('Una tabla de resultados necesita columnas de prueba y resultado.')
            if not schema['producesResults'] and any(role!='note' for role in roles):fail('Una tabla informativa sólo puede contener columnas de nota.')
            information=schema.get('informationMapping')
            if information is not None:
                if schema.get('kind')!='label-value':fail('Los recursos informativos sólo pueden definirse en tablas de etiquetas y valores.')
                if not isinstance(information,dict) or set(information)!={'resources','columns'}:fail('Definición de recursos informativos incompatible.')
                if not isinstance(information['resources'],list) or len(information['resources'])>20 or not isinstance(information['columns'],list) or len(information['columns'])>len(columns):fail('Defina hasta 20 recursos y una asignación por campo informativo.')
                resources={};assigned=set()
                for resource in information['resources']:
                    if not isinstance(resource,dict) or not {'id','name','resourceType'}<=set(resource) or set(resource)-{'id','name','resourceType','defaults'}:fail('Instancia de recurso informativo incompatible.')
                    code(resource['id']);text(resource['name'])
                    if resource['id'] in resources:fail('Cada instancia de recurso necesita un identificador único.')
                    resources[resource['id']]=resource
                for mapping in information['columns']:
                    if not isinstance(mapping,dict) or not {'key','resourceId','target','dataType'}<=set(mapping) or set(mapping)-{'key','resourceId','target','dataType','dateFormat'}:fail('Asignación de campo informativo incompatible.')
                    if mapping['resourceId'] not in resources:fail('El recurso asignado al campo informativo no existe.')
                    if any(not isinstance(v,str) for v in mapping.values()) or mapping['key'] not in keys:fail('El campo informativo debe existir y sus opciones deben ser textos.')
                    if not mapping['target'] and mapping['dataType']:fail('Seleccione un campo FHIR antes de indicar su tipo.')
                    if mapping.get('dateFormat','iso') not in ('iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'):fail('Formato de fecha no válido.')
                    if mapping['key'] in assigned:fail('Cada campo informativo debe tener una única asignación.')
                    assigned.add(mapping['key'])
                for resource in resources.values():
                    import copy
                    candidate=copy.deepcopy(schema);candidate.pop('informationMapping')
                    candidate['rowMapping']={'resourceType':resource['resourceType'],'defaults':resource.get('defaults',[]),
                        'columns':[{k:v for k,v in m.items() if k!='resourceId'} for m in information['columns'] if m['resourceId']==resource['id'] and m['target']]}
                    checked=json.loads(iris.cls('App.Interop.CatalogValidation').Validate('table-type',json.dumps({'code':data['code'],'name':data['name'],'baseVersion':data['baseVersion'],'schema':candidate})))
                    if checked['httpStatus']!=200:fail(resource['name']+': '+checked['error'])
                    normalized={m['key']:m for m in checked['result']['schema']['rowMapping']['columns']}
                    for mapping in information['columns']:
                        if mapping['resourceId']==resource['id'] and mapping['key'] in normalized:mapping['dataType']=normalized[mapping['key']]['dataType']
            row_mapping=None if information is not None else schema.get('rowMapping')
            if row_mapping is not None:
                if not isinstance(row_mapping,dict) or not {'resourceType','columns'}<=set(row_mapping) or set(row_mapping)-{'resourceType','columns','defaults'} or not isinstance(row_mapping['columns'],list) or len(row_mapping['columns'])>len(columns):fail('Definición FHIR de las filas incompatible.')
                model=iris.cls('App.FHIR.ModelCatalog').Context()
                if row_mapping['resourceType'] not in model.resources or row_mapping['resourceType']=='Bundle':fail('Seleccione el recurso FHIR que representa cada fila.')
                assigned=set();targets=set();owners={}
                for mapping in row_mapping['columns']:
                    if not isinstance(mapping,dict) or not {'key','target','dataType'}<=set(mapping) or set(mapping)-{'key','target','dataType','dateFormat'} or any(not isinstance(v,str) for v in mapping.values()):fail('Equivalencia de columna FHIR incompatible.')
                    if mapping.get('dateFormat','iso') not in ('iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'):fail('Formato de fecha no válido.')
                    if mapping['key'] not in keys or mapping['key'] in assigned:fail('La equivalencia debe referirse a una columna única de esta tabla.')
                    try:node=model.resolve(row_mapping['resourceType'],mapping['target'])
                    except ValueError as exc:fail(str(exc))
                    label=next(c['label'] for c in columns if c['key']==mapping['key'])
                    if mapping['target']=='id':fail('Campo «'+label+'»: el identificador del recurso se genera automáticamente.')
                    if node['canonicalPath'] in targets:fail('Los campos «'+owners[node['canonicalPath']]+'» y «'+label+'» apuntan a '+row_mapping['resourceType']+'.'+mapping['target']+'. Para datos distintos, elija otra posición de la lista FHIR.')
                    if '[x]' in mapping['target']:
                        if mapping['dataType']:fail('Seleccione una alternativa concreta o mantenga el campo de tipo variable.')
                    elif not mapping['dataType'] and len(node['types'])==1:mapping['dataType']=node['types'][0]
                    elif mapping['dataType'] not in node['types']:fail('Campo «'+label+'» ('+row_mapping['resourceType']+'.'+mapping['target']+'): el tipo «'+(mapping['dataType'] or 'sin definir')+'» no corresponde; se espera '+', '.join(node['types'])+'.')
                    assigned.add(mapping['key']);targets.add(node['canonicalPath']);owners[node['canonicalPath']]=label
                constants=row_mapping.get('defaults',[])
                if not isinstance(constants,list) or len(constants)>40:fail('Defina hasta 40 valores adicionales del recurso.')
                for constant in constants:
                    if not isinstance(constant,dict) or set(constant)!={'target','value'} or type(constant['value']) not in (str,int,float,bool):fail('Valor adicional FHIR incompatible.')
                    try:node=model.resolve(row_mapping['resourceType'],constant['target'])
                    except ValueError as exc:fail(str(exc))
                    if constant['target']=='id' or '[x]' in constant['target'] or node['canonicalPath'] in targets or len(node['types'])!=1 or node['types'][0] not in {t['name'] for t in model.data_types if t['kind']=='primitive'}:fail('El valor adicional necesita un campo simple FHIR sin otra asignación.')
                    if node.get('codes') and constant['value'] not in node['codes']:fail('El valor adicional no pertenece al conjunto de códigos permitido por FHIR.')
                    targets.add(node['canonicalPath'])
            return {'code':code(data['code']),'name':text(data['name']),'schema':schema,'baseVersion':number(data['baseVersion'])}
        if kind=='document':
            fields={'laboratory','code','name','enabled','recognition','headerAliases','tableTypes','baseVersion'}
            if not fields<=set(data) or set(data)-fields-{'headerExtraction','fhirMapping','tables','tableGroups'}:fail('Campos de definición documental incompatibles.')
            rec=data['recognition']
            required={'issuerPhrases','domains','documentPhrases','headerMode'}
            if not isinstance(rec,dict) or not required<=set(rec) or set(rec)-required-{'headerSignatures','headerSignatureVersion'}:fail('Reglas de identificación incompatibles.')
            for key in ('issuerPhrases','domains','documentPhrases'):rec[key]=strings(rec[key])
            if not rec['issuerPhrases'] and not rec['domains']:fail('Defina una firma del laboratorio o un dominio corporativo.')
            if any(not re.fullmatch(r'[a-zA-Z0-9](?:[a-zA-Z0-9.-]*[a-zA-Z0-9])?\.[a-zA-Z]{2,}',v) for v in rec['domains']):fail('Use dominios sin protocolo ni ruta, por ejemplo laboratorio.es.')
            if rec['headerMode'] not in ('four-column','name-value','issuer-laboratory','learned-structure'):fail('Modo de reconocimiento no válido.')
            signatures=rec.get('headerSignatures',[])
            if not isinstance(signatures,list) or len(signatures)>128 or any(not isinstance(v,str) or not re.fullmatch(r'[a-f0-9]{64}',v) for v in signatures):fail('Firmas estructurales no válidas.')
            if rec.get('headerSignatureVersion',1)!=1:fail('Versión de firma estructural no soportada.')
            if rec['headerMode']=='learned-structure' and not signatures:fail('El modo aprendido necesita firmas de cabecera verificables.')
            aliases=data['headerAliases']
            if not isinstance(aliases,dict) or set(aliases)!={'name','value','unit','referenceRange'}:fail('Defina los cuatro grupos de alias de cabeceras.')
            aliases={key:strings(value) for key,value in aliases.items()}
            if any(not values for values in aliases.values()):fail('Cada columna debe tener al menos un alias.')
            bindings=data['tableTypes']
            if not isinstance(bindings,list) or not 1<=len(bindings)<=20:fail('Asocie entre 1 y 20 tipos de tabla reutilizables.')
            seen=set()
            for binding in bindings:
                if not isinstance(binding,dict) or set(binding)!={'code','version'}:fail('Referencia a tipo de tabla no válida.')
                code(binding['code']);number(binding['version'])
                if binding['version']<1 or binding['code'] in seen:fail('Asocie una sola versión por tipo de tabla.')
                seen.add(binding['code'])
            mapping=data.get('fhirMapping',{'enabled':False,'rules':[]})
            tables=None
            if 'tables' in data:
                tables=data['tables']
                if not isinstance(tables,list) or len(tables)!=len(bindings):fail('Defina las tablas que pertenecen al documento.')
                normalized=[]
                for table in tables:
                    if not isinstance(table,dict) or not {'code','version','name','schema'}<=set(table) or set(table)-{'code','version','name','schema','id','isLatest'}:fail('Definición de tabla documental incompatible.')
                    if not any(b['code']==table['code'] and b['version']==table['version'] for b in bindings):fail('Las tablas deben coincidir con las referencias internas del documento.')
                    packet=json.loads(iris.cls('App.Interop.CatalogValidation').Validate('table-type',json.dumps({'code':table['code'],'name':table['name'],'schema':table['schema'],'baseVersion':0})))
                    if packet['httpStatus']!=200:fail(packet['error'])
                    normalized.append({'code':table['code'],'version':table['version'],'name':table['name'],'schema':packet['result']['schema']})
                if len({t['code'] for t in normalized})!=len(bindings):fail('Las tablas del documento deben tener códigos únicos.')
                tables=normalized
            groups=data.get('tableGroups',[])
            if not isinstance(groups,list) or len(groups)>20:fail('Defina hasta 20 grupos de tablas.')
            group_codes=set();members=set()
            for group in groups:
                if not isinstance(group,dict) or set(group)!={'code','name','tables'}:fail('Grupo de tablas incompatible.')
                code(group['code']);text(group['name'])
                if group['code'] in group_codes or not isinstance(group['tables'],list) or not group['tables'] or any(not isinstance(t,str) for t in group['tables']) or len(set(group['tables']))!=len(group['tables']):fail('Los grupos necesitan códigos únicos y tablas sin duplicados.')
                if any(t not in seen or t in members for t in group['tables']):fail('Cada tabla debe pertenecer como máximo a un grupo del documento.')
                group_codes.add(group['code']);members.update(group['tables'])
            header=data.get('headerExtraction',{'fields':[],'stopLabels':[]})
            if tables is not None:
                header={'fields':[f for t in tables if t['schema'].get('kind')=='label-value' for f in t['schema']['labelFields']],'stopLabels':list(dict.fromkeys(s for t in tables for s in t['schema'].get('stopLabels',[])))}
            context={**data,'headerExtraction':header,'tableGroups':groups,**({'tableTypeDefinitions':tables} if tables is not None else {})}
            checked=json.loads(iris.cls('App.FHIR.Mapping').Validate(json.dumps(mapping),json.dumps(context)))
            if not checked['ok']:fail(checked['error'])
            return {'laboratory':code(data['laboratory']),'code':code(data['code']),'name':text(data['name']),'enabled':boolean(data['enabled']),
                    'recognition':rec,'headerAliases':aliases,'tableTypes':bindings,'baseVersion':number(data['baseVersion']),
                    'headerExtraction':header if tables is not None else header_configuration(header),'fhirMapping':mapping,'tableGroups':groups,**({'tables':tables} if tables is not None else {})}
        fail('Operación de catálogo no admitida.')
    return runtime.stage_envelope(run)
}

ClassMethod SeedData() As %String [ Language = python ]
{
    import json,iris
    def column(key,label,role,group='primary'):
        return {'key':key,'label':label,'role':role,'group':group,'required':role in ('test','value')}
    def schema(columns,results=True):
        return {'columns':columns,'allowSplitRows':True,'allowMissingHeaders':True,'allowCombinedValueUnit':True,'allowMultilineReferences':True,'producesResults':results}
    single=[column('test','Prueba','test',''),column('value','Resultado','value'),column('unit','Unidad','unit'),column('reference-range','Referencia','referenceRange')]
    grouped=[column('test','Prueba','test',''),column('percent-value','Resultado porcentual','value','percentage'),column('percent-range','Referencia porcentual','referenceRange','percentage'),column('absolute-value','Resultado absoluto','value','absolute'),column('absolute-range','Referencia absoluta','referenceRange','absolute')]
    types=[{'code':'single-measurement','name':'Medición simple','schema':schema(single),'baseVersion':0},
           {'code':'grouped-measurements','name':'Mediciones agrupadas','schema':schema(grouped),'baseVersion':0},
           {'code':'qualitative-results','name':'Resultados cualitativos','schema':schema(single),'baseVersion':0},
           {'code':'informative','name':'Tabla informativa','schema':schema([column('note','Nota','note','')],False),'baseVersion':0}]
    return json.dumps({'tableTypes':types},ensure_ascii=False)
}
}

