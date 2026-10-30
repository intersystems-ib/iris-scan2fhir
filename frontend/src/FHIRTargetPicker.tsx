import { useEffect, useState } from 'react';
import { request } from './api';

interface ModelField {
  name:string;types:string[];min:number;max:string;short:string;definition:string;
  codes:string[];targets:string[];children:Record<string,boolean>;generated:boolean;
}
interface Branch {fields:ModelField[];depthLimit?:boolean}
const branches=new Map<string,Promise<Branch>>();
function load(resource:string,path:string){
  const query=new URLSearchParams({resourceType:resource,view:'children',path}),key=query.toString();
  let promise=branches.get(key);
  if(!promise){promise=request<Branch>('/fhir/model?'+key).catch(error=>{branches.delete(key);throw error;});branches.set(key,promise);}
  return promise;
}
const typedName=(name:string,type:string)=>name.endsWith('[x]')?name.slice(0,-3)+type[0].toUpperCase()+type.slice(1):name;

export function FHIRTargetPicker({resource,target,onChange}:{resource:string;target:string;onChange:(target:string,dataType?:string)=>void}){
  return <div className="fhir-target-picker">
    <p>Elige un campo y navega por sus subcampos. Los tipos y cardinalidades proceden del modelo FHIR R5.</p>
    <TargetLevel key={resource} resource={resource} prefix="" segments={target?target.split('.'):[]} onChange={onChange} depth={0}/>
    <label>Ruta FHIR seleccionada<input value={target} readOnly placeholder="Selecciona un campo del modelo"/></label>
  </div>;
}

function TargetLevel({resource,prefix,segments,onChange,depth}:{resource:string;prefix:string;segments:string[];onChange:(target:string,dataType?:string)=>void;depth:number}){
  const [branch,setBranch]=useState<Branch|null>(null),[error,setError]=useState(''),[filter,setFilter]=useState(''),[typeFilter,setTypeFilter]=useState('');
  useEffect(()=>{let stopped=false;setBranch(null);setError('');load(resource,prefix).then(data=>{if(!stopped)setBranch(data);}).catch(e=>{if(!stopped)setError(e.message);});return()=>{stopped=true;};},[resource,prefix]);
  if(error)return <p className="error" role="alert">{error}</p>;
  if(!branch)return <p role="status">Cargando campos del modelo…</p>;
  if(branch.depthLimit)return <p>Se ha alcanzado la profundidad máxima de las asignaciones.</p>;
  const token=segments[0]??'',match=token.match(/^([A-Za-z][A-Za-z0-9]*)(?:\[(\d+|x)\])?$/);
  const field=branch.fields.find(f=>f.name===token||f.name===match?.[1]||f.types.some(t=>typedName(f.name,t)===match?.[1]));
  const type=field?.types.find(t=>typedName(field.name,t)===match?.[1])??(field?.types.length===1?field.types[0]:'');
  const multiple=field&&field.max!=='1',index=match?.[2]&&match[2]!=='x'?Number(match[2]):null;
  const types=[...new Set(branch.fields.flatMap(f=>f.types))].sort();
  const visible=branch.fields.filter(f=>f===field||(!f.generated&&(!typeFilter||f.types.includes(typeFilter))&&[f.name,f.short,...f.types].join(' ').toLowerCase().includes(filter.toLowerCase())));
  function choose(f:ModelField,t:string,position:number|null,tail:string[]=[]){
    const name=f.name.endsWith('[x]')?(t?typedName(f.name,t):f.name):f.name;
    onChange([prefix,name+(f.max!=='1'&&position!==null?'['+position+']':''),...tail].filter(Boolean).join('.'),tail.length?undefined:t);
  }
  return <fieldset className="fhir-model-level">
    <legend>{prefix||resource}</legend>
    {token&&!field&&<p role="alert" className="error">El campo guardado «{token}» no está disponible en este nivel del recurso. Selecciona su equivalente para actualizar la asignación.</p>}
    <div className="catalog-grid">
      <label>Buscar campo<input value={filter} onChange={e=>setFilter(e.target.value)} placeholder="Nombre, descripción o tipo"/></label>
      <label>Filtrar por tipo de datos<select value={typeFilter} onChange={e=>setTypeFilter(e.target.value)}><option value="">Todos los tipos</option>{types.map(t=><option key={t}>{t}</option>)}</select></label>
      <label>Campo FHIR<select value={field?.name??''} onChange={e=>{
        const next=branch.fields.find(f=>f.name===e.target.value);
        if(next)choose(next,next.types.length===1?next.types[0]:'',next.max==='1'?null:0);
        else onChange(prefix);
      }}><option value="">{prefix?'Seleccionar subcampo · Opcional':'Seleccionar campo'}</option>{visible.map(f=><option value={f.name} disabled={f.generated} key={f.name}>{f.name} · {f.min}..{f.max} · {f.types.join(' / ')}{f.generated?' · Generado por el sistema':''}</option>)}{token&&!field&&<option value="" disabled>Ruta guardada no reconocida: {token}</option>}</select></label>
      {field&&<label>Tipo de datos FHIR<select value={type} disabled={field.types.length<=1} onChange={e=>choose(field,e.target.value,index)}><option value="">Seleccionar tipo de datos</option>{field.types.map(t=><option key={t}>{t}</option>)}</select></label>}
      {multiple&&field&&<><label>Destino de la colección<select value={index===null?'all':'item'} onChange={e=>choose(field,type,e.target.value==='all'?null:0)}><option value="item">Un elemento concreto</option><option value="all">Colección completa</option></select></label>{index!==null&&<label>Posición en la colección<input type="number" min={1} max={field.max==='*'?1000:Math.min(1000,Number(field.max))} value={index+1} onChange={e=>{
        const position=Number(e.target.value)-1;
        if(Number.isInteger(position)&&position>=0&&position<1000&&(field.max==='*'||position<Number(field.max)))choose(field,type,position,segments.slice(1));
      }}/></label>}</>}
    </div>
    {field&&<p className="fhir-field-help" title={field.definition}>{field.short} · Cardinalidad {field.min}..{field.max}{type==='Reference'&&field.targets.length?' · Referencia a: '+field.targets.join(', '):''}</p>}
    {field?.codes.length? <p>Valores permitidos: {field.codes.join(', ')}</p>:null}
    {field&&type&&field.children[type]&&(!multiple||index!==null)&&depth<9&&<TargetLevel key={prefix+'.'+token} resource={resource} prefix={[prefix,token].filter(Boolean).join('.')} segments={segments.slice(1)} onChange={onChange} depth={depth+1}/>}
  </fieldset>;
}
