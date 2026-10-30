import { useEffect, useId, useState } from 'react';
import { request, type TablePreview } from './api';
import type { DocumentDefinition, FHIRField, FHIRMapping, FHIRRule, FHIRSource, TableType } from './catalog';
import { FHIRTargetPicker } from './FHIRTargetPicker';

interface Model { fields:{path:string;types:string[];required:boolean;multiple:boolean;codes?:string[]}[] }
const emptyField=():FHIRField=>({target:'',source:{kind:'constant',value:''},transform:'text',required:false,unitColumn:'',dateFormat:'iso'});
export function FHIRMappingEditor({value,onChange,definition,tableTypes,preview}:{value:FHIRMapping;onChange:(mapping:FHIRMapping)=>void;definition:DocumentDefinition;tableTypes:TableType[];preview?:TablePreview}) {
  const [resources,setResources]=useState<string[]>([]),[dataTypes,setDataTypes]=useState<{name:string;kind:string}[]>([]),[models,setModels]=useState<Record<string,Model>>({}),[error,setError]=useState('');
  const prefix=useId(), resourceKey=value.rules.map(r=>r.resourceType).join('|');
  useEffect(()=>{let stopped=false;request<{resources:string[];dataTypes:{name:string;kind:string}[]}>('/fhir/model').then(data=>{if(!stopped){setResources(data.resources);setDataTypes(data.dataTypes);}}).catch(e=>{if(!stopped)setError(e.message);});return()=>{stopped=true;};},[]);
  useEffect(()=>{let stopped=false;for(const resource of new Set(resourceKey.split('|').filter(Boolean)))request<Model>('/fhir/model?resourceType='+encodeURIComponent(resource)).then(model=>{if(!stopped)setModels(old=>({...old,[resource]:model}));}).catch(e=>{if(!stopped)setError(e.message);});return()=>{stopped=true;};},[resourceKey]);
  const boundTypes=tableTypes.filter(type=>definition.tableTypes.some(b=>b.code===type.code&&b.version===type.version));
  function tableAssociation(rule:FHIRRule){const selector=rule.selector;return selector.kind==='tableType'?boundTypes.find(t=>t.code===selector.code&&t.version===selector.version)?.schema.fhir:null;}
  function addTableRule(type:TableType){const association=type.schema.fhir;if(!association)return;let n=value.rules.length+1;while(value.rules.some(r=>r.id==='resource-'+n))n++;
    onChange({...value,rules:[...value.rules,{id:'resource-'+n,resourceType:association.resourceType,repeat:'row',selector:{kind:'tableType',code:type.code,version:type.version},fields:[],filter:null}]});}
  function update(index:number,patch:Partial<FHIRRule>){onChange({...value,rules:value.rules.map((rule,i)=>i===index?{...rule,...patch}:rule)});}
  function field(index:number,j:number,patch:Partial<FHIRField>){update(index,{fields:value.rules[index].fields.map((item,k)=>k===j?{...item,...patch}:item)});}
  function columns(rule:FHIRRule){
    if(rule.selector.kind==='group'){const selector=rule.selector,group=definition.tableGroups?.find(g=>g.code===selector.code);return [...new Map(boundTypes.filter(t=>group?.tables.includes(t.code)).flatMap(t=>t.schema.columns).map(c=>[c.key,c])).values()];}
    if(rule.selector.kind==='tableType'){const selector=rule.selector;return boundTypes.find(t=>t.code===selector.code&&t.version===selector.version)?.schema.columns??[];}
    if(rule.selector.kind==='table'){const selector=rule.selector;return preview?.pages.find(p=>p.page===selector.page)?.tables.find(t=>t.id===selector.table)?.result?.columns.map((c,i)=>({...c,key:c.key??'column-'+(i+1),role:c.role??'note',group:c.group??''}))??[];}
    return [];
  }
  function suggest(index:number){
    const rule=value.rules[index],cols=columns(rule),test=cols.find(c=>c.role==='test'),values=cols.filter(c=>c.role==='value');
    if(rule.fields.length||!test||!values.length)return;
    const fields:FHIRField[]=[{...emptyField(),target:'status',source:{kind:'constant',value:'preliminary'},required:true},{...emptyField(),target:'code.text',source:{kind:'column',key:test.key,row:null},required:true}];
    values.forEach((column,i)=>{
      const base=values.length>1?'component['+i+'].':'',unit=cols.find(c=>c.role==='unit'&&c.group===column.group),range=cols.find(c=>c.role==='referenceRange'&&c.group===column.group);
      if(base)fields.push({...emptyField(),target:base+'code.text',source:{kind:'constant',value:column.label},required:true});
      fields.push({...emptyField(),target:base+'value[x]',source:{kind:'column',key:column.key,row:null},transform:'auto-value',unitColumn:unit?.key??'',required:true});
      if(range)fields.push({...emptyField(),target:base+'referenceRange[0]',source:{kind:'column',key:range.key,row:null},transform:'range-text'});
    });
    update(index,{repeat:'row',fields});
  }
  function origin(kind:FHIRSource['kind']):FHIRSource{
    if(kind==='header')return {kind,key:''};
    if(kind==='column')return {kind,key:'',row:null};
    if(kind==='groupColumn')return {kind,tableCode:'',tableIndex:0,row:0,key:''};
    if(kind==='cell')return {kind,id:''};
    if(kind==='resource')return {kind,rule:'',mode:'one',scope:'document'};
    if(kind==='document')return {kind,key:'documentDefinitionName'};
    return {kind,value:''};
  }
  return <section aria-label="Mapeo FHIR R5">
    <h3>Mapeo a recursos FHIR R5</h3><p>Define recursos para un grupo de tablas, una tabla completa o un registro. Los campos de información administrativa se seleccionan desde sus tablas de etiquetas y valores.</p>
    <p>Selecciona el recurso, los campos, sus tipos y el origen de cada valor. Puedes partir de una propuesta determinista basada en los roles de las columnas y ajustar sus equivalencias manualmente.</p>
    <details><summary>Tipos de datos disponibles en FHIR R5</summary><p>{dataTypes.filter(t=>t.kind==='primitive').map(t=>t.name).join(' · ')}</p><p>{dataTypes.filter(t=>t.kind==='complex').map(t=>t.name).join(' · ')}</p><p>Al elegir un campo se muestran únicamente los tipos que admite ese campo.</p></details>
    {error&&<p className="error" role="alert">{error}</p>}
    <label className="catalog-check"><input type="checkbox" checked={value.enabled} onChange={e=>onChange({...value,enabled:e.target.checked})}/>Aplicar automáticamente después de extraer las tablas</label>
    {value.rules.map((rule,index)=>{
      const cols=columns(rule),model=models[rule.resourceType],selector=rule.selector,association=tableAssociation(rule);
      return <div className="fhir-rule" key={index}>
        <h4>Regla {index+1} · {rule.resourceType||'Seleccionar recurso'}</h4>
        <div className="catalog-grid">
          <label>Código de regla<input value={rule.id} onChange={e=>update(index,{id:e.target.value})}/></label>
          <label>Recurso FHIR<select value={rule.resourceType} onChange={e=>update(index,{resourceType:e.target.value})}><option value="">Seleccionar tipo de recurso</option>{resources.map(type=><option value={type} disabled={type==='Bundle'} key={type}>{type}{type==='Bundle'?' · Contenedor generado por el sistema':''}</option>)}</select></label>
          <label>Datos de origen<select value={selector.kind==='header'?'header':selector.kind==='table'?'table':selector.kind==='group'?'group:'+selector.code:selector.code+':'+selector.version} onChange={e=>{
            if(e.target.value==='header')update(index,{selector:{kind:'header'},repeat:'document',filter:null});
            else if(e.target.value==='table')update(index,{selector:{kind:'table',page:1,table:'t1'},repeat:'row'});
            else if(e.target.value.startsWith('group:'))update(index,{selector:{kind:'group',code:e.target.value.slice(6)},repeat:'group',filter:null});
            else{const [code,version]=e.target.value.split(':');const association=boundTypes.find(t=>t.code===code&&t.version===Number(version))?.schema.fhir;update(index,{selector:{kind:'tableType',code,version:Number(version)},repeat:'row',...(!rule.resourceType&&association?{resourceType:association.resourceType}:{})});}
          }}>{selector.kind==="header"&&<option value="header">Tabla de información · Asignación heredada</option>}{(definition.tableGroups??[]).map(g=><option value={'group:'+g.code} key={'group:'+g.code}>Grupo: {g.name}</option>)}{boundTypes.map(type=><option key={type.code} value={type.code+':'+type.version}>{type.name}</option>)}<option value="table">Tabla concreta de un documento</option></select></label>
          <label>Crear un recurso<select value={rule.repeat} disabled={selector.kind==='header'} onChange={e=>update(index,{repeat:e.target.value as FHIRRule['repeat'],filter:null})}>{selector.kind==='header'?<option value="document">Por documento · Compatibilidad</option>:<>{selector.kind==='group'&&<option value="group">Por grupo de tablas</option>}<option value="table">Por tabla completa</option><option value="row">Por registro / fila</option></>}</select></label>
          {selector.kind==='table'&&<><label>Página<input type="number" min={1} value={selector.page} onChange={e=>update(index,{selector:{...selector,page:Number(e.target.value)}})}/></label><label>Tabla<input value={selector.table} onChange={e=>update(index,{selector:{...selector,table:e.target.value}})} placeholder="t1"/></label></>}
        </div>
        {association&&<p className="catalog-notice">Destino definido por la tabla: {association.resourceType}{association.dataType?' → '+association.target+' · '+association.dataType:' · Recurso completo'}. Se utiliza la versión vinculada al documento.</p>}
        {association&&association.resourceType!==rule.resourceType&&<button className="secondary" onClick={()=>update(index,{resourceType:association.resourceType})}>Usar el recurso definido en la tabla · Conservar asignaciones</button>}
        {association?.target&&<button className="secondary" disabled={rule.fields.some(f=>f.target===association.target)} onClick={()=>update(index,{fields:[...rule.fields,{...emptyField(),target:association.target,transform:({Quantity:'quantity',decimal:'number',integer:'integer',boolean:'boolean',date:'date'} as Record<string,string>)[association.dataType]??'text'}]})}>Asignar datos al campo definido por la tabla</button>}
        {rule.repeat==='row'&&<details><summary>Limitar a filas con un valor determinado</summary><label>Columna de filtro<input value={rule.filter?.column??''} onChange={e=>update(index,{filter:e.target.value?{column:e.target.value,equals:rule.filter?.equals??''}:null})} list={prefix+'columns-'+index}/></label>{rule.filter&&<label>Texto exacto<input value={rule.filter.equals} onChange={e=>update(index,{filter:{column:rule.filter!.column,equals:e.target.value}})}/></label>}</details>}
        <datalist id={prefix+'columns-'+index}>{cols.map(col=><option key={col.key} value={col.key}>{col.label}</option>)}</datalist>
        {rule.resourceType==='Observation'&&rule.repeat==='row'&&cols.some(c=>c.role==='test')&&cols.some(c=>c.role==='value')&&<><button className="secondary" disabled={!!rule.fields.length} onClick={()=>suggest(index)}>Proponer asignaciones según las columnas</button><p>Propuesta determinista para registros sin asignaciones. Usa los roles de las columnas, propone preliminary como estado y no asigna códigos LOINC ni UCUM. Las asignaciones existentes se conservan.</p></>}
        {rule.fields.map((mapping,j)=>{
          const source=mapping.source,fieldCols=source.kind==='groupColumn'?boundTypes.find(t=>t.code===source.tableCode)?.schema.columns??[]:cols;
          return <div className="fhir-assignment" key={j}>
            {rule.resourceType?<FHIRTargetPicker resource={rule.resourceType} target={mapping.target} onChange={(target,dataType)=>{
              const conversion:Record<string,string>={Quantity:'quantity',string:'text',decimal:'number',integer:'integer',positiveInt:'integer',unsignedInt:'integer',boolean:'boolean',date:'date',dateTime:'iso-dateTime'};
              field(index,j,{target,...(mapping.transform==='auto-value'&&dataType&&conversion[dataType]?{transform:conversion[dataType]}:{})});
            }}/>:<p>Selecciona un recurso para revisar las asignaciones conservadas.</p>}
            <div className="catalog-grid">
              <label>Origen del valor<select value={source.kind} onChange={e=>{const kind=e.target.value as FHIRSource['kind'];field(index,j,{source:origin(kind),transform:kind==='resource'?'reference':'text'});}}>{source.kind==="header"&&<option value="header">Campo de tabla de información · Heredado</option>}<option value="column" disabled={rule.repeat==='group'}>Columna reconstruida</option>{rule.repeat==='group'&&<option value="groupColumn">Columna de una tabla del grupo</option>}<option value="cell" disabled={rule.repeat==='group'}>Celda OCR</option><option value="constant">Valor fijo</option><option value="document">Dato del documento</option><option value="resource">Referencia a otra regla</option></select></label>
              {source.kind==='groupColumn'&&<><label>Tabla del grupo<select value={source.tableCode} onChange={e=>field(index,j,{source:{...source,tableCode:e.target.value,key:''}})}><option value="">Seleccionar tabla</option>{boundTypes.filter(t=>(definition.tableGroups??[]).find(g=>selector.kind==='group'&&g.code===selector.code)?.tables.includes(t.code)).map(t=><option key={t.code} value={t.code}>{t.name}</option>)}</select></label><label>Repetición de la tabla<input type="number" min={1} value={source.tableIndex+1} onChange={e=>field(index,j,{source:{...source,tableIndex:Number(e.target.value)-1}})}/></label><label>Registro / fila de origen<input type="number" min={1} value={source.row+1} onChange={e=>field(index,j,{source:{...source,row:Number(e.target.value)-1}})}/></label><label>Columna del grupo<select value={source.key} onChange={e=>field(index,j,{source:{...source,key:e.target.value}})}><option value="">Seleccionar columna</option>{fieldCols.map(c=><option key={c.key} value={c.key}>{c.label}</option>)}</select></label></>}
              {source.kind==='header'&&<label>Campo<select value={source.key} onChange={e=>field(index,j,{source:{...source,key:e.target.value}})}><option value="">Seleccionar</option>{definition.headerExtraction?.fields.map(f=><option value={f.key} key={f.key}>{f.label}</option>)}</select></label>}
              {source.kind==='column'&&<><label>Columna<select value={source.key} onChange={e=>field(index,j,{source:{...source,key:e.target.value}})}><option value="">Seleccionar columna</option>{cols.map(c=><option key={c.key} value={c.key}>{c.label} · {c.key}</option>)}{source.key&&!cols.some(c=>c.key===source.key)&&<option value={source.key}>{source.key} · No disponible en esta selección</option>}</select></label><label>Fila · Vacío para la fila actual<input type="number" min={1} value={source.row===null?'':source.row+1} onChange={e=>field(index,j,{source:{...source,row:e.target.value?Number(e.target.value)-1:null}})}/></label></>}
              {source.kind==='cell'&&<label>Celda de origen<input value={source.id} placeholder="r2c2" onChange={e=>field(index,j,{source:{...source,id:e.target.value}})}/></label>}
              {source.kind==='constant'&&<label>Valor fijo<input value={String(source.value)} list={prefix+'codes-'+index+'-'+j} onChange={e=>field(index,j,{source:{...source,value:e.target.value}})}/><datalist id={prefix+'codes-'+index+'-'+j}>{model?.fields.find(f=>f.path===mapping.target)?.codes?.map(code=><option key={code}>{code}</option>)}</datalist></label>}
              {source.kind==='document'&&<label>Dato<select value={source.key} onChange={e=>field(index,j,{source:{...source,key:e.target.value}})}><option value="documentDefinitionName">Nombre del formato</option><option value="laboratoryName">Laboratorio</option><option value="filename">Nombre del archivo</option></select></label>}
              {source.kind==='resource'&&<><label>Regla de destino<select value={source.rule} onChange={e=>field(index,j,{source:{...source,rule:e.target.value}})}><option value="">Seleccionar</option>{value.rules.map(r=><option key={r.id} value={r.id}>{r.id} · {r.resourceType}</option>)}</select></label><label>Referencias<select value={source.mode} onChange={e=>field(index,j,{source:{...source,mode:e.target.value as 'one'|'all'}})}><option value="one">Un único recurso</option><option value="all">Todos los recursos de la regla</option></select></label><label>Ámbito<select value={source.scope} onChange={e=>field(index,j,{source:{...source,scope:e.target.value as 'document'|'group'|'table'|'row'}})}><option value="document">Documento completo</option><option value="group">Mismo grupo de tablas</option><option value="table">Misma tabla</option><option value="row">Misma fila</option></select></label></>}
              <label>Conversión<select value={mapping.transform} onChange={e=>field(index,j,{transform:e.target.value})}>{[['text','Texto literal'],['number','Número decimal'],['integer','Entero'],['boolean','Booleano true/false'],['date','Fecha'],['iso-dateTime','Fecha/hora ISO con zona'],['quantity','Cantidad con unidad'],['auto-value','Valor numérico o texto'],['range-text','Referencia como texto'],['reference','Referencia entre recursos']].map(([key,label])=><option value={key} key={key}>{label}</option>)}</select></label>
              {['quantity','auto-value'].includes(mapping.transform)&&<label>Columna de unidad · Opcional<select value={mapping.unitColumn} onChange={e=>field(index,j,{unitColumn:e.target.value})}><option value="">Sin columna de unidad</option>{fieldCols.map(c=><option key={c.key} value={c.key}>{c.label} · {c.key}</option>)}{mapping.unitColumn&&!fieldCols.some(c=>c.key===mapping.unitColumn)&&<option value={mapping.unitColumn}>{mapping.unitColumn} · No disponible en esta selección</option>}</select></label>}
              {mapping.transform==='date'&&<label>Formato de fecha<select value={mapping.dateFormat} onChange={e=>field(index,j,{dateFormat:e.target.value})}>{['iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'].map(format=><option key={format}>{format}</option>)}</select></label>}
            </div>
            <label className="catalog-check"><input type="checkbox" checked={mapping.required} onChange={e=>field(index,j,{required:e.target.checked})}/>Bloquear el recurso si falta este valor</label>
            <button className="secondary" onClick={()=>update(index,{fields:rule.fields.filter((_,k)=>k!==j)})}>Quitar asignación</button>
          </div>;
        })}
        <div className="catalog-toolbar"><button className="secondary" disabled={!rule.resourceType} onClick={()=>update(index,{fields:[...rule.fields,emptyField()]})}>Añadir asignación</button><button className="secondary" onClick={()=>onChange({...value,rules:value.rules.filter((_,i)=>i!==index)})}>Quitar regla</button></div>
      </div>;
    })}
    {boundTypes.filter(t=>t.schema.fhir).map(t=><button className="secondary" disabled={value.rules.length>=60} key={t.code} onClick={()=>addTableRule(t)}>Crear regla desde tabla: {t.name} · {t.schema.fhir!.resourceType}</button>)}
    <button className="secondary" disabled={value.rules.length>=60} onClick={()=>{
      let n=value.rules.length+1;while(value.rules.some(r=>r.id==='resource-'+n))n++;
      const first=boundTypes[0];onChange({...value,rules:[...value.rules,{id:'resource-'+n,resourceType:'',repeat:first?'row':'document',selector:first?{kind:'tableType',code:first.code,version:first.version}:{kind:'header'},fields:[],filter:null}]});
    }}>Añadir regla FHIR</button>
  </section>;
}



