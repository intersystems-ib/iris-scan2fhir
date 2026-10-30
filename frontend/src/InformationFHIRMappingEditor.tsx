import {useEffect,useId,useState} from 'react';
import {request} from './api';
import type {InformationFHIRMapping,TableSchema} from './catalog';
import {FHIRPathPositions} from './FHIRPathPositions';

interface Field {path:string;types:string[];codes?:string[]}
interface Model {fields:Field[]}
const normalizePath=(path:string)=>path.replace(/\[\d+\]/g,'[0]');
const dates=['iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'];
export function informationMapping(schema:TableSchema):InformationFHIRMapping {
  if(schema.informationMapping)return schema.informationMapping;
  const legacy=schema.rowMapping;
  return legacy?{resources:[{id:'resource-1',name:legacy.resourceType,resourceType:legacy.resourceType,defaults:legacy.defaults??[]}],
    columns:legacy.columns.map(c=>({...c,resourceId:'resource-1'}))}:{resources:[],columns:[]};
}

export function InformationFHIRMappingEditor({schema,onChange,sampleValues}:{schema:TableSchema;onChange:(value:InformationFHIRMapping)=>void;sampleValues?:Record<string,string>}){
  const value=informationMapping(schema),listId=useId();
  const [types,setTypes]=useState<string[]>([]),[models,setModels]=useState<Record<string,Model>>({}),[error,setError]=useState(''),[newType,setNewType]=useState(''),[search,setSearch]=useState('');
  const typeKey=JSON.stringify([...new Set(value.resources.map(r=>r.resourceType))].sort());
  useEffect(()=>{let active=true;request<{resources:string[]}>('/fhir/model').then(data=>{if(active)setTypes(data.resources.filter(t=>t!=='Bundle'));}).catch(e=>{if(active)setError(e.message);});return()=>{active=false;};},[]);
  useEffect(()=>{let active=true;setError('');Promise.all((JSON.parse(typeKey) as string[]).map(async type=>[type,await request<Model>('/fhir/model?resourceType='+encodeURIComponent(type))] as const)).then(entries=>{if(active)setModels(Object.fromEntries(entries));}).catch(e=>{if(active)setError(e.message);});return()=>{active=false;};},[typeKey]);
  function updateResource(id:string,patch:Partial<InformationFHIRMapping['resources'][number]>){onChange({...value,resources:value.resources.map(r=>r.id===id?{...r,...patch}:r)});}
  function assign(key:string,resourceId:string,target=''){
    const resource=value.resources.find(r=>r.id===resourceId),field=resource&&models[resource.resourceType]?.fields.find(f=>f.path===normalizePath(target));
    onChange({...value,columns:[...value.columns.filter(c=>c.key!==key),...(resourceId?[{key,resourceId,target,dataType:target.includes('[x]')?'':field?.types[0]??''}]:[])]});
  }
  function addResource(){if(!newType)return;let n=1;while(value.resources.some(r=>r.id==='resource-'+n))n++;const count=value.resources.filter(r=>r.resourceType===newType).length+1;
    onChange({...value,resources:[...value.resources,{id:'resource-'+n,name:newType+' '+count,resourceType:newType,defaults:[]}]});}
  const removed=value.columns.filter(c=>!schema.columns.some(col=>col.key===c.key));
  return <section className="row-fhir-editor" aria-label="Recursos FHIR de la tabla informativa">
    <h3>Recursos que genera esta tabla informativa</h3>
    <p>Añade las instancias de recursos y dales un nombre para distinguirlas. Puedes añadir varias del mismo tipo. Después asigna cada campo de la tabla a una instancia y a su campo FHIR.</p>
    {error&&<p className="error" role="alert">{error}</p>}
    <div className="catalog-toolbar"><label>Tipo de recurso a añadir<select value={newType} onChange={e=>setNewType(e.target.value)}><option value="">Seleccionar tipo FHIR R5</option>{types.map(t=><option key={t}>{t}</option>)}</select></label><button className="secondary" disabled={!newType||value.resources.length>=20} onClick={addResource}>Añadir recurso a la tabla</button></div>
    {value.resources.map(resource=>{
      const assigned=value.columns.filter(c=>c.resourceId===resource.id),model=models[resource.resourceType];
      const additional=model?.fields.filter(f=>f.types.length===1&&['code','string','boolean','integer','decimal','date','dateTime','uri','canonical'].includes(f.types[0]))??[];
      return <div className="catalog-form" key={resource.id}>
        <div className="catalog-grid"><label>Nombre de la instancia<input aria-label={'Nombre de '+resource.id} value={resource.name} onChange={e=>updateResource(resource.id,{name:e.target.value})}/></label><label>Tipo de recurso<select aria-label={'Tipo de '+resource.id} value={resource.resourceType} disabled={assigned.length>0} onChange={e=>updateResource(resource.id,{resourceType:e.target.value})}>{types.map(t=><option key={t}>{t}</option>)}</select></label></div>
        <p><b>{resource.name||resource.resourceType}</b> · {resource.id} · {assigned.filter(c=>c.target).length} campos asignados</p>
        <button className="secondary" disabled={assigned.length>0} onClick={()=>onChange({...value,resources:value.resources.filter(r=>r.id!==resource.id)})}>Quitar recurso {resource.id}</button>
        {assigned.length>0&&<small>Retira sus asignaciones de campos para cambiar el tipo o quitar esta instancia.</small>}
        <details><summary>Valores adicionales de {resource.name||resource.id}</summary>
          <datalist id={listId+'-'+resource.id}>{additional.map(f=><option key={f.path} value={f.path}>{f.types[0]}</option>)}</datalist>
          {(resource.defaults??[]).map((constant,i)=><div className="catalog-grid" key={i}><label>Campo FHIR adicional<input value={constant.target} list={listId+'-'+resource.id} onChange={e=>updateResource(resource.id,{defaults:resource.defaults!.map((c,j)=>j===i?{...c,target:e.target.value}:c)})}/></label><label>Valor definido<input value={String(constant.value)} onChange={e=>updateResource(resource.id,{defaults:resource.defaults!.map((c,j)=>j===i?{...c,value:e.target.value}:c)})}/></label><button className="secondary" onClick={()=>updateResource(resource.id,{defaults:resource.defaults!.filter((_,j)=>j!==i)})}>Quitar valor</button></div>)}
          <button className="secondary" disabled={(resource.defaults?.length??0)>=40} onClick={()=>updateResource(resource.id,{defaults:[...(resource.defaults??[]),{target:'',value:''}]})}>Añadir valor del recurso</button>
        </details>
      </div>;
    })}
    <h3>Asignaciones de los campos informativos</h3>
    <p>Los campos sin destino FHIR se conservan en el OCR. Las instancias con asignaciones generan recursos separados en el Bundle.</p>
    <label>Buscar campos FHIR<input value={search} onChange={e=>setSearch(e.target.value)} placeholder="Nombre del campo o tipo de dato"/></label>
    <div className="table-scroll"><table className="row-fhir-columns information-fhir-columns"><thead><tr><th>Campo del documento</th><th>Valor extraído</th><th>Recurso de destino</th><th>Campo FHIR</th><th>Tipo de dato</th></tr></thead><tbody>
      {schema.columns.map(col=>{
        const mapping=value.columns.find(c=>c.key===col.key),resource=value.resources.find(r=>r.id===mapping?.resourceId),model=resource&&models[resource.resourceType];
        const field=model?.fields.find(f=>f.path===normalizePath(mapping?.target??''));
        const options=model?.fields.filter(f=>f.path!=='id'&&(!search||[f.path,...f.types].join(' ').toLowerCase().includes(search.toLowerCase())))??[];
        return <tr key={col.key}><td><b>{col.label}</b><small>{col.key}</small></td><td>{sampleValues?.[col.key]||'Sin valor de ejemplo'}</td><td>
          <select aria-label={'Recurso FHIR de '+col.label} value={mapping?.resourceId??''} onChange={e=>assign(col.key,e.target.value)}><option value="">Sin asignar</option>{mapping&&!resource&&<option value={mapping.resourceId}>Instancia retirada · Revisar</option>}{value.resources.map(r=><option key={r.id} value={r.id}>{r.name} · {r.id}</option>)}</select>{resource&&<small>{resource.resourceType} · {resource.id}</small>}
        </td><td><select aria-label={'Campo FHIR de '+col.label} disabled={!model} value={mapping?.target??''} onChange={e=>assign(col.key,mapping!.resourceId,e.target.value)}><option value="">Sin asignar · Sólo OCR</option>{mapping?.target&&!options.some(f=>f.path===mapping.target)&&<option value={mapping.target}>{mapping.target} · {field?.types.join(' / ')??'Revisar compatibilidad'}</option>}{options.map(f=><option key={f.path} value={f.path}>{f.path} · {f.types.join(' / ')}</option>)}</select>{mapping?.target&&<FHIRPathPositions path={mapping.target} label={col.label} onChange={target=>assign(col.key,mapping.resourceId,target)}/>}</td><td>
          {mapping?.target?<><b>{mapping.dataType||field?.types.join(' / ')}</b>{mapping.target.includes('[x]')&&field&&<select aria-label={'Tipo de dato de '+col.label} value="" onChange={e=>{if(e.target.value)assign(col.key,mapping.resourceId,mapping.target.replace('[x]',e.target.value[0].toUpperCase()+e.target.value.slice(1)));}}><option value="">Elegir alternativa concreta</option>{field.types.map(t=><option key={t}>{t}</option>)}</select>}{mapping.dataType==='date'&&<select aria-label={'Formato de fecha de '+col.label} value={mapping.dateFormat??'iso'} onChange={e=>onChange({...value,columns:value.columns.map(c=>c.key===col.key?{...c,dateFormat:e.target.value}:c)})}>{dates.map(d=><option key={d}>{d}</option>)}</select>}{!field&&model&&<small className="error">Elige un campo válido para esta instancia.</small>}</>:<span>Pendiente</span>}
        </td></tr>;
      })}
    </tbody></table></div>
    {!!removed.length&&<div className="validation-issues"><p>Hay asignaciones de campos retirados. Revísalas antes de guardar.</p>{removed.map(c=><p key={c.key}>{c.key} → {c.resourceId} · {c.target} <button className="secondary" onClick={()=>onChange({...value,columns:value.columns.filter(m=>m.key!==c.key)})}>Quitar asignación retirada</button></p>)}</div>}
  </section>;
}
