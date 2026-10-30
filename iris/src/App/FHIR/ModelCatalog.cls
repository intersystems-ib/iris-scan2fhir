Class App.FHIR.ModelCatalog Extends %RegisteredObject
{
ClassMethod Describe(resourceType As %String = "", path As %String = "", view As %String = "") As %String [ Language = python ]
{
    import json,iris
    runtime=iris.cls('App.FHIR.ModelCatalog').Context()
    processing=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        if not resourceType:return {'version':'5.0.0','resources':runtime.resources,'dataTypes':runtime.data_types,'validationScope':'structure-and-model; no implementation-guide or complete terminology validation'}
        if resourceType not in runtime.resources:raise processing.ProcessingError('Tipo de recurso R5 no disponible.')
        if view=='children':
            try:return runtime.browse(resourceType,path)
            except ValueError as exc:raise processing.ProcessingError(str(exc))
        if view or path:raise processing.ProcessingError('Consulta del modelo FHIR no válida.')
        return runtime.describe(resourceType)
    return processing.stage_envelope(run)
}

ClassMethod Context() [ Language = python ]
{
    global _fhir_runtime
    try:return _fhir_runtime
    except NameError:pass
    import json,re,tarfile,datetime
    from pathlib import Path
    from types import SimpleNamespace
    types={};resources=[];systems={};value_sets={}
    root=Path('/opt/irisapp/fhir-r5')
    available={p.stem for p in (root/'Model'/'Resource').glob('*.cls')}
    with tarfile.open(root/'hl7.fhir.r5.core-5.0.0.tgz','r:gz') as package:
        for member in package:
            if not member.name.startswith(('package/StructureDefinition-','package/CodeSystem-','package/ValueSet-')) or not member.name.endswith('.json'):continue
            data=json.load(package.extractfile(member))
            if data.get('resourceType')=='CodeSystem':
                codes=set()
                def collect(items):
                    for item in items:
                        if 'code' in item:codes.add(item['code'])
                        collect(item.get('concept',[]))
                collect(data.get('concept',[]))
                if data.get('content')=='complete':systems[data.get('url')]=codes
                continue
            if data.get('resourceType')=='ValueSet':value_sets[data.get('url')]=data.get('compose',{});continue
            if data.get('derivation')=='constraint' or data.get('kind') not in ('resource','complex-type'):continue
            name=data.get('type');nodes={};prefix=name+'.'
            if not name or not data.get('snapshot'):continue
            for e in data['snapshot']['element']:
                path=e['path'];key=path[len(prefix):] if path.startswith(prefix) else ''
                codes=[t['code'].rsplit('/',1)[-1].replace('System.','').lower() if t['code'].startswith('http') else t['code'] for t in e.get('type',[])]
                nodes[key]={'types':codes,'min':e.get('min',0),'max':e.get('max','1'),'short':e.get('short',''),'definition':e.get('definition',''),'children':{},'reference':e.get('contentReference',''),'binding':e.get('binding',{}),'targets':[p.rsplit('/',1)[-1] for t in e.get('type',[]) for p in t.get('targetProfile',[])]}
            for key,node in nodes.items():
                if key:
                    parent,_,leaf=key.rpartition('.')
                    if parent in nodes:nodes[parent]['children'][leaf]=node
            types[name]={'nodes':nodes,'root':nodes.get('',{'children':{}}),'kind':data['kind']}
            if data['kind']=='resource' and not data.get('abstract') and name in available:resources.append(name)
    # contentReference reuses an element's type as well as its children.
    for definition in types.values():
        for node in definition['nodes'].values():
            current=node;seen=set()
            while not current['types'] and current.get('reference'):
                reference=current['reference'].lstrip('#')
                if reference in seen:break
                seen.add(reference);target,_,key=reference.partition('.')
                current=types.get(target,{}).get('nodes',{}).get(key,{})
                if not current:break
            if not node['types'] and current.get('types'):node['types']=list(current['types'])
    resources.sort()
    primitive={code for definition in types.values() for node in definition['nodes'].values() for code in node['types'] if code not in types and code!='Resource'}
    data_types=[{'name':name,'kind':'complex' if name in types else 'primitive'} for name in sorted(primitive|{name for name,definition in types.items() if definition['kind']=='complex-type'})]
    for definition in types.values():
        for node in definition['nodes'].values():
            binding=node.get('binding',{});compose=value_sets.get(binding.get('valueSet','').split('|')[0],{})
            if binding.get('strength')!='required' or compose.get('exclude') or not compose.get('include'):continue
            allowed=set();complete=True
            for include in compose['include']:
                if include.get('filter') or include.get('valueSet'):complete=False;break
                if 'concept' in include:allowed.update(c['code'] for c in include['concept'])
                elif include.get('system') in systems:allowed.update(systems[include['system']])
                else:complete=False;break
            if complete and allowed:node['codes']=sorted(allowed)
    def children(node,owner):
        if node.get('children'):return node['children'],owner
        if node.get('reference'):
            reference=node['reference'].lstrip('#');target,_,key=reference.partition('.')
            return types[target]['nodes'][key]['children'],target
        for code in node.get('types',[]):
            if code in types:return types[code]['root']['children'],code
        return {},owner
    def parse(path):
        if not isinstance(path,str) or len(path)>240:raise ValueError('Ruta FHIR no válida.')
        parts=[]
        for token in path.split('.'):
            match=re.fullmatch(r'([A-Za-z][A-Za-z0-9]*)(?:\[(\d{1,3}|x)\])?',token)
            if not match:raise ValueError('Ruta FHIR no válida: '+path)
            parts.append((match[1]+('[x]' if match[2]=='x' else ''),int(match[2]) if match[2] and match[2]!='x' else None))
        if len(parts)>10:raise ValueError('Ruta FHIR demasiado profunda.')
        return parts
    def resolve(resource,path):
        if resource not in resources:raise ValueError('Recurso R5 no disponible: '+str(resource))
        node=types[resource]['root'];owner=resource;canonical=[]
        for i,(name,index) in enumerate(parse(path)):
            props,owner=children(node,owner);chosen=None
            canonical_name=name
            if name in props:chosen=props[name]
            else:
                for key,candidate in props.items():
                    if key.endswith('[x]'):
                        for code in candidate['types']:
                            if name==key[:-3]+code[:1].upper()+code[1:]:chosen={**candidate,'types':[code]};canonical_name=key
            if chosen is None:raise ValueError('El modelo R5 no contiene '+resource+'.'+path)
            if index is not None and (chosen['max']=='1' or (chosen['max']!='*' and index>=int(chosen['max']))):raise ValueError('Índice incompatible con la cardinalidad FHIR.')
            if i<len(parse(path))-1 and chosen['max']!='1' and index is None:raise ValueError('Indique el índice de la colección FHIR.')
            node=chosen
            canonical.append(canonical_name+('['+str(index)+']' if index is not None else ''))
        return {**node,'canonicalPath':'.'.join(canonical)}
    def describe(resource):
        if resource not in resources:raise ValueError('Recurso R5 no disponible.')
        fields=[]
        def walk(node,owner,prefix,depth):
            if depth>4 or len(fields)>900:return
            props,owner=children(node,owner)
            for name,child in props.items():
                if child['max']=='0' or name in ('contained','extension','modifierExtension') or (name=='text' and 'Narrative' in child['types']):continue
                path=prefix+name+('[0]' if child['max']!='1' else '')
                fields.append({'path':path,'types':child['types'],'required':bool(child['min']),'multiple':child['max']!='1','codes':child.get('codes',[])})
                if name.endswith('[x]'):
                    for code in child['types']:
                        actual=prefix+name[:-3]+code[:1].upper()+code[1:]
                        fields.append({'path':actual,'types':[code],'required':bool(child['min']),'multiple':False})
                        walk({**child,'types':[code]},owner,actual+'.',depth+1)
                else:walk(child,owner,path+'.',depth+1)
        walk(types[resource]['root'],resource,'',0)
        return {'resourceType':resource,'modelClass':'Spain.FHIR.DTL.vR5.Model.Resource.'+resource,'fields':fields,'version':'5.0.0'}
    def browse(resource,path):
        node=resolve(resource,path) if path else types[resource]['root']
        if path and len(parse(path))>=10:return {'resourceType':resource,'path':path,'fields':[],'depthLimit':True}
        props,owner=children(node,resource)
        fields=[]
        for name,child in props.items():
            if child['max']=='0':continue
            shown_types=child['types'] or (['BackboneElement'] if children(child,owner)[0] else [])
            fields.append({'name':name,'types':shown_types,'min':child['min'],'max':child['max'],'short':child.get('short',''),'definition':child.get('definition',''),'codes':child.get('codes',[]),'targets':child.get('targets',[]),'children':{code:bool(children({**child,'types':[code]},owner)[0]) for code in shown_types},'generated':not path and name=='id'})
        return {'resourceType':resource,'path':path,'fields':fields,'version':'5.0.0'}
    def validate(resource):
        errors=[];kind=resource.get('resourceType')
        if kind not in resources:return ['Tipo de recurso no disponible.']
        def check(value,node,owner,path):
            props,next_owner=children(node,owner)
            if props:
                if not isinstance(value,dict):errors.append(path+': se esperaba un objeto.');return
                if not value:errors.append(path+': elemento FHIR vacío.');return
                for name,child in props.items():
                    present=[key for key in value if key==name or (name.endswith('[x]') and key in [name[:-3]+t[:1].upper()+t[1:] for t in child['types']])]
                    if child['min'] and not present:errors.append(path+'.'+name+': campo obligatorio ausente.')
                    if name.endswith('[x]') and len(present)>1:errors.append(path+'.'+name+': varias alternativas incompatibles.')
                for key,content in value.items():
                    if key=='resourceType' and path==kind:continue
                    child=props.get(key)
                    if child is None:
                        for name,candidate in props.items():
                            for code in candidate['types'] if name.endswith('[x]') else []:
                                if key==name[:-3]+code[:1].upper()+code[1:]:child={**candidate,'types':[code]}
                    if child is None:errors.append(path+'.'+key+': campo desconocido.');continue
                    if child['max']=='0':errors.append(path+'.'+key+': elemento no permitido.');continue
                    if child['max']!='1':
                        if not isinstance(content,list):errors.append(path+'.'+key+': se esperaba una lista.');continue
                        if not content:errors.append(path+'.'+key+': colección FHIR vacía.');continue
                        if len(content)<child['min'] or (child['max']!='*' and len(content)>int(child['max'])):errors.append(path+'.'+key+': cardinalidad incorrecta.')
                        for i,item in enumerate(content):check(item,child,next_owner,path+'.'+key+'['+str(i)+']')
                    else:check(content,child,next_owner,path+'.'+key)
            else:
                codes=node.get('types',[]);code=codes[0] if codes else 'string'
                if value is None or value=='' or value==[]:errors.append(path+': valor vacío.');return
                if code in ('integer','positiveInt','unsignedInt'):
                    if type(value) is not int or (code=='positiveInt' and value<=0) or (code=='unsignedInt' and value<0):errors.append(path+': entero no válido.')
                elif code=='decimal':
                    if type(value) not in (int,float):errors.append(path+': decimal no válido.')
                elif code=='boolean':
                    if type(value) is not bool:errors.append(path+': booleano no válido.')
                elif not isinstance(value,str):errors.append(path+': se esperaba texto.')
                elif code=='code' and node.get('codes') and value not in node['codes']:errors.append(path+': código no admitido por el conjunto R5 requerido.')
                elif code=='date':
                    if not re.fullmatch(r'\d{4}(?:-\d{2}(?:-\d{2})?)?',value):errors.append(path+': fecha FHIR no válida.')
                    elif len(value)==10:
                        try:datetime.date.fromisoformat(value)
                        except ValueError:errors.append(path+': fecha inexistente.')
                elif code in ('dateTime','instant'):
                    try:
                        if 'T' in value:
                            stamp=datetime.datetime.fromisoformat(value.replace('Z','+00:00'))
                            if stamp.tzinfo is None:raise ValueError()
                        elif code=='instant':raise ValueError()
                        else:datetime.date.fromisoformat(value)
                    except ValueError:errors.append(path+': fecha/hora FHIR sin formato o zona válida.')
                elif code=='id' and not re.fullmatch(r'[A-Za-z0-9.-]{1,64}',value):errors.append(path+': identificador FHIR no válido.')
        check(resource,types[kind]['root'],kind,kind)
        return errors
    _fhir_runtime=SimpleNamespace(resources=resources,data_types=data_types,resolve=resolve,describe=describe,browse=browse,parse=parse,validate=validate)
    return _fhir_runtime
}
}
