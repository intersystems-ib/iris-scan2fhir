Class App.FHIR.Mapping Extends %RegisteredObject
{
ClassMethod Validate(configJSON As %String, definitionJSON As %String = "{}") As %String [ Language = python ]
{
    import json,iris,re
    try:
        config=json.loads(configJSON);definition=json.loads(definitionJSON)
        if not isinstance(config,dict) or set(config)!={'enabled','rules'} or type(config['enabled']) is not bool or not isinstance(config['rules'],list) or len(config['rules'])>60:raise ValueError('Configuración FHIR incompatible.')
        if not config['rules']:
            if config['enabled']:raise ValueError('Defina alguna regla antes de activar el mapeo automático.')
            return json.dumps({'ok':True,'configuration':config})
        schema=iris.cls('App.FHIR.ModelCatalog').Context();ids=set()
        for rule in config['rules']:
            if set(rule)!={'id','resourceType','repeat','selector','fields','filter'} or not re.fullmatch(r'[a-z][a-z0-9-]{0,63}',rule['id']) or rule['id'] in ids:raise ValueError('Cada regla FHIR necesita un código único y campos válidos.')
            ids.add(rule['id'])
            if rule['resourceType'] not in schema.resources or rule['resourceType']=='Bundle':raise ValueError('Tipo de recurso R5 no válido.')
            if rule['repeat'] not in ('document','group','table','row'):raise ValueError('Repetición FHIR no válida.')
            selector=rule['selector']
            if selector.get('kind')=='header':
                if set(selector)!={'kind'} or rule['repeat']!='document':raise ValueError('La cabecera genera un recurso por documento.')
            elif selector.get('kind')=='tableType':
                if set(selector)!={'kind','code','version'} or type(selector['version']) is not int or not any(b['code']==selector['code'] and b['version']==selector['version'] for b in definition.get('tableTypes',[])):raise ValueError('El tipo de tabla no está asociado a esta definición.')
                table_type=next((t for t in definition.get('tableTypeDefinitions',[]) if t['code']==selector['code'] and t['version']==selector['version']),None)
                if table_type is None:
                    stored=iris.cls('App.Catalog.Repository').BoundTypeJSON(selector['code'],selector['version'])
                    if stored:table_type=json.loads(stored)
                association=(table_type or {}).get('schema',{}).get('fhir')
                row_meaning=(table_type or {}).get('schema',{}).get('rowMapping')
                information=(table_type or {}).get('schema',{}).get('informationMapping')
                expected_resource='' if information is not None else row_meaning['resourceType'] if row_meaning else association['resourceType'] if association else ''
                if information is not None and rule['repeat']=='row' and rule['resourceType'] not in {r['resourceType'] for r in information['resources']}:raise ValueError('El recurso no está definido en la lista de esta tabla informativa.')
                if expected_resource and rule['repeat']=='row' and expected_resource!=rule['resourceType']:raise ValueError('El recurso del registro no coincide con el recurso definido para esta tabla.')
            elif selector.get('kind')=='group':
                if set(selector)!={'kind','code'} or not any(g['code']==selector['code'] for g in definition.get('tableGroups',[])):raise ValueError('Grupo de tablas no definido en el documento.')
            elif selector.get('kind')=='table':
                if set(selector)!={'kind','page','table'} or type(selector['page']) is not int or selector['page']<1 or not re.fullmatch(r't[1-9]\d{0,2}',selector['table']):raise ValueError('Seleccione una página y tabla válidas.')
            else:raise ValueError('Origen de regla FHIR no válido.')
            if selector['kind']!='header' and rule['repeat']=='document':raise ValueError('Use repetición por tabla o fila para una tabla.')
            if rule['repeat']=='group' and selector['kind']!='group':raise ValueError('El alcance de grupo necesita un grupo de tablas.')
            if rule['filter'] is not None and (set(rule['filter'])!={'column','equals'} or not isinstance(rule['filter']['column'],str) or not isinstance(rule['filter']['equals'],str)):raise ValueError('Filtro de filas incompatible.')
            if rule['filter'] is not None and rule['repeat']!='row':raise ValueError('El filtro solo se aplica a reglas por fila.')
            if not isinstance(rule['fields'],list) or not 1<=len(rule['fields'])<=100:raise ValueError('Cada regla necesita entre 1 y 100 asignaciones.')
            targets=[]
            for field in rule['fields']:
                if set(field)!={'target','source','transform','required','unitColumn','dateFormat'} or type(field['required']) is not bool:raise ValueError('Asignación FHIR incompatible.')
                node=schema.resolve(rule['resourceType'],field['target'])
                if field['target']=='id':raise ValueError('El identificador del recurso se asigna automáticamente en el Bundle.')
                canonical=node['canonicalPath']
                for previous in targets:
                    if previous==canonical or previous.startswith(canonical+'.') or canonical.startswith(previous+'.'):raise ValueError('Dos asignaciones escriben el mismo campo, alternativa FHIR o sus elementos.')
                targets.append(canonical);source=field['source'];kind=source.get('kind')
                if kind=='header':
                    if set(source)!={'kind','key'} or not any(h['key']==source['key'] for h in (definition.get('headerExtraction') or {}).get('fields',[])):raise ValueError('Campo de cabecera no definido.')
                elif kind=='column':
                    if set(source)!={'kind','key','row'} or not isinstance(source['key'],str) or (source['row'] is not None and (type(source['row']) is not int or source['row']<0)):raise ValueError('Columna o fila de origen no válida.')
                    if rule['repeat']=='group':raise ValueError('Seleccione la tabla de origen dentro del grupo.')
                    if selector['kind']=='header' or (rule['repeat']!='row' and source['row'] is None):raise ValueError('Indique la fila para asignar una celda de una tabla completa.')
                elif kind=='groupColumn':
                    group=next((g for g in definition.get('tableGroups',[]) if g['code']==selector.get('code')),None) if selector['kind']=='group' else None
                    if set(source)!={'kind','tableCode','tableIndex','row','key'} or rule['repeat']!='group' or not group or source['tableCode'] not in group['tables'] or type(source['tableIndex']) is not int or not 0<=source['tableIndex']<1000 or type(source['row']) is not int or source['row']<0 or not isinstance(source['key'],str):raise ValueError('Columna del grupo de tablas no válida.')
                elif kind=='cell':
                    if set(source)!={'kind','id'} or not re.fullmatch(r'r[1-9]\d{0,3}c[1-9]\d{0,2}',source['id']) or selector['kind']=='header' or rule['repeat']=='group':raise ValueError('Celda OCR no válida.')
                elif kind=='constant':
                    if set(source)!={'kind','value'} or type(source['value']) not in (str,bool,int,float):raise ValueError('Constante FHIR no válida.')
                elif kind=='document':
                    if set(source)!={'kind','key'} or source['key'] not in ('filename','laboratoryName','documentDefinitionName'):raise ValueError('Dato documental no válido.')
                elif kind=='resource':
                    if set(source)!={'kind','rule','mode','scope'} or source['mode'] not in ('one','all') or source['scope'] not in ('document','group','table','row') or field['transform']!='reference' or 'Reference' not in node['types']:raise ValueError('Referencia entre recursos no válida.')
                    if source['mode']=='all' and (node['max']=='1' or schema.parse(field['target'])[-1][1] is not None):raise ValueError('La referencia múltiple requiere una colección sin índice.')
                else:raise ValueError('Origen de asignación FHIR no válido.')
                if field['transform'] not in ('text','number','integer','boolean','date','iso-dateTime','quantity','range','range-text','auto-value','reference'):raise ValueError('Conversión no admitida.')
                if field['transform']=='auto-value' and (not field['target'].endswith('[x]') or not {'Quantity','string'}<=set(node['types'])):raise ValueError('El valor automático necesita una elección FHIR de Quantity/string.')
                if field['transform']=='quantity' and 'Quantity' not in node['types']:raise ValueError('La conversión de cantidad necesita un campo Quantity.')
                if field['transform']=='range' and 'Range' not in node['types']:raise ValueError('La conversión de intervalo necesita un campo Range.')
                if not isinstance(field['unitColumn'],str) or field['dateFormat'] not in ('iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'):raise ValueError('Opciones de conversión no válidas.')
        by_id={r['id']:r for r in config['rules']}
        for rule in config['rules']:
            for field in rule['fields']:
                source=field['source']
                if source['kind']=='resource':
                    if source['rule'] not in ids:raise ValueError('La regla referenciada no existe.')
                    node=schema.resolve(rule['resourceType'],field['target'])
                    if node.get('targets') and 'Resource' not in node['targets'] and by_id[source['rule']]['resourceType'] not in node['targets']:raise ValueError('El tipo del recurso referenciado no es compatible con el campo FHIR.')
        return json.dumps({'ok':True,'configuration':config})
    except (ValueError,TypeError,KeyError,AttributeError) as exc:return json.dumps({'ok':False,'error':str(exc)},ensure_ascii=False)
}

ClassMethod Transform(analysisJSON As %String, definitionJSON As %String, configJSON As %String) As %String [ Language = python ]
{
    import json,re,uuid,datetime,copy,math,iris
    from decimal import Decimal
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        analysis=json.loads(analysisJSON);definition=json.loads(definitionJSON);config=json.loads(configJSON)
        checked=json.loads(iris.cls('App.FHIR.Mapping').Validate(configJSON,definitionJSON))
        if not checked['ok']:raise runtime.ProcessingError(checked['error'])
        if not config['rules']:raise runtime.ProcessingError('Defina reglas de mapeo FHIR antes de generar la vista previa.')
        schema=iris.cls('App.FHIR.ModelCatalog').Context();contexts=[];excluded=[];audit=[]
        membership={code:g['code'] for g in definition.get('tableGroups',[]) for code in g['tables']}
        def reject(rule,context,message):excluded.append({'rule':rule,'page':context.get('page'),'table':context.get('tableId'),'row':context.get('row'),'reason':message})
        def column(table,key,row):
            cols=table['result']['columns'];index=next((i for i,c in enumerate(cols) if c.get('key')==key),None)
            if index is None:raise ValueError('Columna no encontrada: '+key)
            if row is None or not 0<=row<len(table['result']['rows']):raise ValueError('Fila de origen no disponible.')
            return table['result']['rows'][row][index]
        for rule in config['rules']:
            sources=[]
            if rule['selector']['kind']=='header':sources=[{}]
            else:
                for page in analysis.get('pages',[]):
                    for table in page['tables']:
                        selector=rule['selector'];expected=(table.get('result') or {}).get('expectedStructure') or {};kind=expected.get('tableType') or {}
                        matches=(selector['kind']=='table' and page['page']==selector['page'] and table['id']==selector['table']) or (selector['kind']=='tableType' and kind.get('code')==selector['code'] and kind.get('version')==selector['version']) or (selector['kind']=='group' and membership.get(kind.get('code'))==selector['code'])
                        if not matches:continue
                        base={'page':page['page'],'tableId':table['id'],'table':table,'groupCode':membership.get(kind.get('code')),'tableCode':kind.get('code')}
                        if not table.get('result') or not table['result']['validation']['allNonemptyCellsAccountedFor'] or any(not issue['sourceCells'] for issue in table['result']['issues']):
                            reject(rule['id'],base,'La tabla tiene incidencias estructurales pendientes.')
                            if rule['repeat']=='group':sources.append({**base,'invalid':True})
                            continue
                        if rule['repeat']=='row':
                            for i,row in enumerate(table['result']['rows']):
                                ctx={**base,'row':i}
                                if rule['filter']:
                                    try:
                                        if column(table,rule['filter']['column'],i)['text']!=rule['filter']['equals']:continue
                                    except ValueError as exc:reject(rule['id'],ctx,str(exc));continue
                                used_columns={f['source']['key'] for f in rule['fields'] if f['source']['kind']=='column'}|{f['unitColumn'] for f in rule['fields'] if f.get('unitColumn')}
                                if rule['filter']:used_columns.add(rule['filter']['column'])
                                ids={key for col,cell in zip(table['result']['columns'],row) if col.get('key') in used_columns for key in cell['sourceCells']}
                                if any(ids & set(issue['sourceCells']) for issue in table['result']['issues']):reject(rule['id'],ctx,'La fila contiene datos OCR pendientes de revisión.');continue
                                sources.append(ctx)
                        else:sources.append(base)
                if rule['repeat']=='group' and sources:
                    group=next(g for g in definition['tableGroups'] if g['code']==rule['selector']['code'])
                    if any(s.get('invalid') for s in sources) or set(group['tables'])!={s['tableCode'] for s in sources}:
                        reject(rule['id'],{},'El grupo no contiene todas sus tablas válidas.');sources=[]
                    else:sources=[{'groupCode':group['code'],'tables':sources}]
            if not sources:reject(rule['id'],{},'No hay datos utilizables para esta regla.')
            for source in sources:
                if len(contexts)>=1000:reject(rule['id'],source,'Se ha alcanzado el límite de 1000 recursos por vista previa.');break
                identity='|'.join(str(v) for v in (analysis['trace']['requestId'],rule['id'],rule['resourceType'],source.get('page'),source.get('tableId'),source.get('row'),source.get('groupCode')))
                identifier=str(uuid.uuid5(uuid.NAMESPACE_URL,identity))
                contexts.append({**source,'rule':rule,'url':'urn:uuid:'+identifier,'resource':{'resourceType':rule['resourceType'],'id':identifier},'evidence':[],'error':None})
        def value(ctx,source,unit_column=''):
            kind=source['kind'];evidence={'source':source}
            if kind=='constant':return source['value'],evidence,None
            if kind=='document':return analysis.get(source['key'],''),evidence,None
            if kind=='header':
                header=analysis.get('firstPageInformation') or {}
                if any(issue['key']==source['key'] for issue in header.get('issues',[])):raise ValueError('El campo de cabecera tiene incidencias pendientes.')
                fields=[f for f in header.get('fields',[]) if f['key']==source['key'] and f['value']]
                if len({f['value'] for f in fields})>1:raise ValueError('Campo de cabecera ambiguo.')
                if not fields:return '',evidence,None
                evidence['header']=fields[0];return fields[0]['value'],evidence,None
            if kind=='groupColumn':
                members=[t for t in ctx['tables'] if t['tableCode']==source['tableCode']]
                if source['tableIndex']>=len(members):raise ValueError('Tabla del grupo no disponible.')
                member=members[source['tableIndex']]
                raw,proof,unit=value(member,{'kind':'column','key':source['key'],'row':source['row']},unit_column)
                proof.update(source=source,group=ctx['groupCode']);return raw,proof,unit
            table=ctx['table'];row=ctx.get('row')
            if kind=='column':
                row=source['row'] if source['row'] is not None else row
                cell=column(table,source['key'],row)
            else:
                cell=(table.get('sourceCells') or {}).get(source['id'])
                if not cell:raise ValueError('Celda OCR no disponible.')
                cell={'text':cell['text'],'sourceCells':[source['id']]}
            ids=set(cell['sourceCells']);unit=cell.get('unit')
            if unit_column:
                unit=column(table,unit_column,row);ids.update(unit['sourceCells'])
            if any(ids & set(issue['sourceCells']) for issue in table['result']['issues']):raise ValueError('La celda contiene una incidencia OCR pendiente.')
            evidence.update(page=ctx['page'],table=ctx['tableId'],row=row,sourceCells=sorted(ids),literal=cell['text'],sourceParts=cell.get('sourceParts',[]))
            return cell['text'],evidence,unit
        def number(raw,integer=False):
            text=str(raw).strip().replace(',','.')
            if not re.fullmatch(r'[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?',text):raise ValueError('El valor no es numérico sin ambigüedad.')
            decimal=Decimal(text);out=int(decimal) if integer else float(decimal)
            if (integer and decimal!=out) or (not integer and (not math.isfinite(out) or Decimal(str(out))!=decimal)):raise ValueError('La conversión perdería precisión numérica.')
            return out
        def convert(raw,field,unit):
            mode=field['transform']
            if mode=='text':return str(raw)
            if mode in ('number','integer'):return number(raw,mode=='integer')
            if mode=='boolean':
                if raw in (True,'true'):return True
                if raw in (False,'false'):return False
                raise ValueError('Se requiere true o false explícito.')
            if mode=='range-text':return {'text':str(raw)}
            if mode=='range':
                numeric=r'[+-]?\d+(?:[.,]\d+)?(?:[eE][+-]?\d+)?'
                match=re.fullmatch(r'\s*\(?\s*('+numeric+r')\s*(?:-|–|—|a|to)\s*('+numeric+r')\s*\)?\s*',str(raw),re.I)
                if not match:raise ValueError('El intervalo necesita dos límites numéricos explícitos.')
                low=number(match[1]);high=number(match[2])
                if low>high:raise ValueError('El límite inferior del intervalo supera al superior.')
                out={'low':{'value':low},'high':{'value':high}}
                if unit and unit['text']:
                    out['low']['unit']=unit['text'];out['high']['unit']=unit['text']
                return out
            if mode in ('quantity','auto-value'):
                match=re.fullmatch(r'\s*([<>≤≥])?\s*([+-]?\d+(?:[.,]\d+)?(?:[eE][+-]?\d+)?)\s*',str(raw))
                if not match:
                    if mode=='auto-value':return str(raw)
                    raise ValueError('Cantidad no numérica o con unidad sin separar.')
                quantity={'value':number(match[2])}
                if match[1]:quantity['comparator']={'≤':'<=','≥':'>='}.get(match[1],match[1])
                if unit and unit['text']:quantity['unit']=unit['text']
                return quantity
            if mode=='iso-dateTime':
                value=str(raw).strip();datetime.datetime.fromisoformat(value.replace('Z','+00:00'))
                if not re.search(r'(Z|[+-]\d{2}:\d{2})$',value):raise ValueError('La fecha/hora necesita zona horaria explícita.')
                return value
            if mode=='date':
                value=str(raw).strip();fmt=field['dateFormat']
                if fmt=='iso':return datetime.date.fromisoformat(value).isoformat()
                if fmt in ('d/M/yyyy','M/d/yyyy'):return datetime.datetime.strptime(value,'%d/%m/%Y' if fmt=='d/M/yyyy' else '%m/%d/%Y').date().isoformat()
                parts=value.split('-');months={'jan':1,'ene':1,'feb':2,'mar':3,'apr':4,'abr':4,'may':5,'jun':6,'jul':7,'aug':8,'ago':8,'sep':9,'oct':10,'nov':11,'dec':12,'dic':12}
                if len(parts)!=3 or parts[1].casefold() not in months:raise ValueError('Fecha incompatible con d-MMM-yyyy.')
                return datetime.date(int(parts[2]),months[parts[1].casefold()],int(parts[0])).isoformat()
            raise ValueError('Conversión incompatible con este origen.')
        def assign(resource,path,converted):
            parts=schema.parse(path);node=resource
            for i,(name,index) in enumerate(parts):
                if name.endswith('[x]'):name=name[:-3]+('Quantity' if isinstance(converted,dict) else 'String')
                last=i==len(parts)-1
                if index is not None:
                    target=node.setdefault(name,[])
                    while len(target)<=index:target.append({})
                    if last:target[index]=converted
                    else:node=target[index]
                elif last:node[name]=converted
                else:node=node.setdefault(name,{})
        for ctx in contexts:
            for field in ctx['rule']['fields']:
                if field['source']['kind']=='resource':continue
                try:
                    raw,evidence,unit=value(ctx,field['source'],field['unitColumn'])
                    if raw=='' or raw is None:
                        if field['required']:raise ValueError('Falta un valor obligatorio para '+field['target'])
                        continue
                    converted=convert(raw,field,unit);assign(ctx['resource'],field['target'],converted)
                    ctx['evidence'].append({'target':field['target'],'transform':field['transform'],**evidence})
                except (ValueError,KeyError,TypeError,OverflowError) as exc:ctx['error']=str(exc);break
            ctx['base']=copy.deepcopy(ctx['resource'])
            if not ctx['evidence'] and not any(f['source']['kind']=='resource' for f in ctx['rule']['fields']):ctx['error']='La regla no aporta datos al recurso.'
        # Resolve dependencies to a fixed point: no reference may point at a rejected draft.
        for iteration in range(len(contexts)+1):
            changed=False
            for ctx in contexts:
                if ctx['error']:continue
                ctx['resource']=copy.deepcopy(ctx['base'])
                try:
                    for field in ctx['rule']['fields']:
                        source=field['source']
                        if source['kind']!='resource':continue
                        targets=[other for other in contexts if not other['error'] and other['rule']['id']==source['rule']]
                        if source['scope']=='group':
                            if not ctx.get('groupCode'):raise ValueError('El recurso no pertenece a un grupo de tablas.')
                            targets=[other for other in targets if other.get('groupCode')==ctx['groupCode']]
                        elif source['scope']!='document':targets=[other for other in targets if other.get('page')==ctx.get('page') and other.get('tableId')==ctx.get('tableId')]
                        if source['scope']=='row':targets=[other for other in targets if other.get('row')==ctx.get('row')]
                        if not targets:
                            if field['required']:raise ValueError('No se ha generado el recurso referenciado por '+field['target'])
                            continue
                        if source['mode']=='one' and len(targets)!=1:raise ValueError('La referencia necesita un único recurso de destino.')
                        refs=[{'reference':other['url']} for other in targets]
                        target_node=schema.resolve(ctx['rule']['resourceType'],field['target'])
                        collection=target_node['max']!='1' and schema.parse(field['target'])[-1][1] is None
                        assign(ctx['resource'],field['target'],refs if source['mode']=='all' or collection else refs[0])
                    serialized=json.dumps(ctx['resource'],ensure_ascii=False,allow_nan=False)
                    if serialized==ctx.get('checkedJSON'):continue
                    errors=schema.validate(ctx['resource'])
                    if errors:raise ValueError('; '.join(errors[:5]))
                    native=json.loads(iris.cls('App.FHIR.ModelBridge').Check(json.dumps(ctx['resource'],ensure_ascii=False,allow_nan=False)))
                    if not native['ok']:raise ValueError('El modelo ObjectScript R5 rechaza el recurso: '+native['error'])
                    if json.loads(native['json'],parse_float=Decimal)!=json.loads(json.dumps(ctx['resource']),parse_float=Decimal):raise ValueError('La serialización del modelo R5 altera o descarta datos; revise el mapeo.')
                    ctx['checkedJSON']=serialized
                except (ValueError,KeyError,TypeError) as exc:ctx['error']=str(exc);changed=True
            if not changed:break
        entries=[]
        for ctx in contexts:
            if ctx['error']:reject(ctx['rule']['id'],ctx,ctx['error']);continue
            entries.append({'fullUrl':ctx['url'],'resource':ctx['resource']})
            audit.append({'fullUrl':ctx['url'],'rule':ctx['rule']['id'],'group':ctx.get('groupCode'),'page':ctx.get('page'),'table':ctx.get('tableId'),'row':ctx.get('row'),'assignments':ctx['evidence']})
        bundle={'resourceType':'Bundle','type':'collection'}
        if entries:bundle['entry']=entries
        if entries:
            native=json.loads(iris.cls('App.FHIR.ModelBridge').Bundle(json.dumps(bundle,ensure_ascii=False,allow_nan=False)))
            if not native['ok']:raise runtime.ProcessingError('El modelo R5 no puede serializar el Bundle: '+native['error'])
            if json.loads(native['json'],parse_float=Decimal)!=json.loads(json.dumps(bundle),parse_float=Decimal):raise runtime.ProcessingError('El modelo R5 altera el Bundle; se bloquea la exportación.')
        return {'bundle':bundle,'status':'partial' if entries and excluded else 'blocked' if excluded else 'ready','resourceCount':len(entries),'excluded':excluded,'provenance':audit,'definitionId':analysis['definitionId'],'definitionVersion':analysis['definitionVersion'],'validationScope':'FHIR R5 5.0.0 structure and supplied ObjectScript model; no implementation-guide or complete terminology validation'}
    return runtime.stage_envelope(run)
}
}
