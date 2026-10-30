import {useEffect,useState,useId} from 'react';
import {request} from './api';
import type {TableSchema,RowFHIRMapping} from './catalog';
import {recommendedResource,recommendColumns,mergeRecommendation} from './fhirRecommendations';
import {FHIRPathPositions} from './FHIRPathPositions';

interface Field {path:string;types:string[];required:boolean;multiple:boolean;codes?:string[]}
interface Model {fields:Field[]}
const zeroIndexes=(path:string)=>path.replace(/\[\d+\]/g,'[0]');
const typeLabel=(path:string,type:string)=>{
  if(/(?:^|\.)referenceRange\[\d+\]$/.test(path))return 'Intervalo de referencia · '+type;
  return type;
};
export function RowFHIRMappingEditor({schema,onChange,sampleValues}:{schema:TableSchema;onChange:(value:RowFHIRMapping|null)=>void;sampleValues?:Record<string,string>}){
  const informational=schema.kind==='label-value';
  const value=schema.rowMapping??null;
  const suggestedResource=recommendedResource(schema),modelResource=value?.resourceType||suggestedResource;
  const fieldList=useId();
  const [resources,setResources]=useState<string[]>([]),[model,setModel]=useState<Model|null>(null),[error,setError]=useState(''),[search,setSearch]=useState('');
  useEffect(()=>{let active=true;request<{resources:string[]}>('/fhir/model').then(data=>{if(active)setResources(data.resources);}).catch(e=>{if(active)setError(e.message);});return()=>{active=false;};},[]);
  useEffect(()=>{let active=true;setModel(null);if(modelResource)request<Model>('/fhir/model?resourceType='+encodeURIComponent(modelResource)).then(data=>{if(active)setModel(data);}).catch(e=>{if(active)setError(e.message);});return()=>{active=false;};},[modelResource]);
  function assign(key:string,target:string){
    if(!value)return;
    const field=model?.fields.find(f=>f.path===zeroIndexes(target));
    onChange({...value,columns:[...value.columns.filter(c=>c.key!==key),...(target?[{key,target,dataType:target.includes('[x]')?'':field?.types[0]??''}]:[])]});
  }
  function propose(){
    if(!model||modelResource!==suggestedResource)return;
    const next=mergeRecommendation(value,recommendColumns(schema,model.fields));
    onChange(next.mapping);
  }
  const recommendation=model&&modelResource===suggestedResource?mergeRecommendation(value,recommendColumns(schema,model.fields)):null;
  const removed=value?.columns.filter(c=>!schema.columns.some(col=>col.key===c.key))??[];
  return <section className="row-fhir-editor" aria-label="Significado FHIR de filas y columnas">
    <h3>{informational?'Equivalencias FHIR de los campos extraídos':'Qué representan las filas y las columnas'}</h3>
    <p>Elige el recurso de cada fila y asigna los campos FHIR de las columnas relevantes. Sólo las columnas con un campo asignado se utilizan en FHIR; las demás se conservan en las tablas OCR.</p>
    {error&&<p className="error" role="alert">{error}</p>}
    {suggestedResource&&(!value||value.resourceType===suggestedResource)&&<div className="catalog-notice"><p>Recomendación por las cabeceras: <b>{suggestedResource}</b>, con los campos y tipos de sus columnas. Puedes aplicarla y editarla.</p><button className="secondary" disabled={!recommendation?.addedKeys.length} onClick={propose}>{value?'Completar equivalencias recomendadas':'Aplicar recomendación FHIR'}</button><p>Completa los campos recomendados y conserva las asignaciones existentes. Los campos se comprueban con el modelo FHIR R5.</p></div>}
    <label>{informational?'El registro informativo representa un recurso':'Cada fila representa un recurso'}<select value={value?.resourceType??''} onChange={e=>{
      setError('');onChange(e.target.value?{...value,resourceType:e.target.value,columns:value?.columns??[]}:null);
    }}><option value="">Sin definir</option>{resources.map(resource=><option value={resource} key={resource} disabled={resource==='Bundle'}>{resource}{resource==='Bundle'?' · Contenedor generado posteriormente':''}</option>)}</select></label>
    {!value&&<div className="table-scroll"><table className="row-fhir-columns"><thead><tr><th>Campo del documento</th>{informational&&<th>Valor extraído</th>}<th>Campo del recurso</th><th>Tipo de dato FHIR</th></tr></thead><tbody>{schema.columns.map(c=><tr key={c.key}><td><b>{c.label}</b></td>{informational&&<td>{sampleValues?.[c.key]||'Sin valor de ejemplo'}</td>}<td>Selecciona el recurso</td><td>Pendiente</td></tr>)}</tbody></table></div>}
    {value&&<>
      <p className="catalog-notice"><b>{informational?'1 tabla informativa':'1 fila'} → 1 {value.resourceType}</b> · {value.columns.filter(c=>c.target&&schema.columns.some(col=>col.key===c.key)).length} de {schema.columns.length} campos asignados</p>
      <label>Buscar campos FHIR<input value={search} onChange={e=>setSearch(e.target.value)} placeholder="Nombre del campo o tipo de dato"/></label>
      <div className="table-scroll"><table className="row-fhir-columns"><thead><tr><th>Campo del documento</th>{informational&&<th>Valor extraído</th>}<th>Campo del recurso</th><th>Tipo de dato FHIR</th></tr></thead><tbody>
        {schema.columns.map(col=>{
          const mapping=value.columns.find(c=>c.key===col.key),field=model?.fields.find(f=>f.path===zeroIndexes(mapping?.target??''));
          const options=model?.fields.filter(f=>f.path!=='id'&&(!search||[f.path,...f.types].join(' ').toLowerCase().includes(search.toLowerCase())))??[];
          const actualType=mapping?.dataType||field?.types.join(' / ')||'';
          return <tr key={col.key}><td><b>{col.label}</b><small>{col.key}</small></td>{informational&&<td>{sampleValues?.[col.key]||'Sin valor de ejemplo'}</td>}<td>
            <select aria-label={'Campo FHIR de '+col.label} value={mapping?.target??''} disabled={!model} onChange={e=>assign(col.key,e.target.value)}>
              <option value="">Sin asignar · Sólo OCR</option>
              {mapping&&!options.some(f=>f.path===mapping.target)&&<option value={mapping.target}>{mapping.target} · {field?.types.join(' / ')??'Revisar compatibilidad'}</option>}
              {options.map(f=><option value={f.path} key={f.path}>{f.path} · {f.types.join(' / ')}</option>)}
            </select>
            {mapping?.target&&<FHIRPathPositions path={mapping.target} label={col.label} onChange={target=>assign(col.key,target)}/>}
          </td><td>{mapping?<><b>{mapping.dataType?typeLabel(mapping.target,mapping.dataType):'Tipo variable según el valor'}</b><small title={actualType}>{mapping.dataType?'':actualType}</small>{field&&mapping.target.includes('[x]')&&<select aria-label={'Tipo de dato de '+col.label} value="" onChange={e=>{if(e.target.value)assign(col.key,mapping.target.replace('[x]',e.target.value[0].toUpperCase()+e.target.value.slice(1)));}}><option value="">Mantener las alternativas del campo</option>{field.types.map(t=><option key={t}>{t}</option>)}</select>}{mapping.dataType==='date'&&<select aria-label={'Formato de fecha de '+col.label} value={mapping.dateFormat??'iso'} onChange={e=>onChange({...value,columns:value.columns.map(c=>c.key===col.key?{...c,dateFormat:e.target.value}:c)})}>{['iso','d-MMM-yyyy','d/M/yyyy','M/d/yyyy'].map(format=><option key={format}>{format}</option>)}</select>}{!field&&model&&<small className="error">El campo no pertenece al recurso seleccionado. Elige su equivalente.</small>}</>:<span>Pendiente</span>}</td></tr>;
        })}
      </tbody></table></div>
      {!!removed.length&&<div className="validation-issues"><p>Equivalencias de columnas retiradas. Revísalas antes de guardar.</p>{removed.map(c=><p key={c.key}>{c.key} → {c.target} <button className="secondary" onClick={()=>onChange({...value,columns:value.columns.filter(item=>item.key!==c.key)})}>Quitar equivalencia retirada</button></p>)}</div>}
      <details><summary>Valores del recurso que no están en las columnas</summary><p>Permite completar campos necesarios, como el estado o la intención, con valores que hayas definido para este formato. Si un estado obligatorio admite unknown y no hay un valor definido, se indicará desconocido.</p>
        <datalist id={fieldList}>{model?.fields.filter(f=>f.types.length===1&&['code','string','boolean','integer','decimal','date','dateTime','uri','canonical'].includes(f.types[0])).map(f=><option key={f.path} value={f.path}>{f.types[0]}</option>)}</datalist>
        {(value.defaults??[]).map((constant,i)=><div className="catalog-grid" key={i}><label>Campo FHIR adicional<input value={constant.target} list={fieldList} onChange={e=>onChange({...value,defaults:value.defaults!.map((c,j)=>j===i?{...c,target:e.target.value}:c)})}/></label><label>Valor definido<input value={String(constant.value)} onChange={e=>onChange({...value,defaults:value.defaults!.map((c,j)=>j===i?{...c,value:e.target.value}:c)})}/></label><button className="secondary" onClick={()=>onChange({...value,defaults:value.defaults!.filter((_,j)=>j!==i)})}>Quitar valor</button></div>)}
        <button className="secondary" disabled={(value.defaults?.length??0)>=40} onClick={()=>onChange({...value,defaults:[...(value.defaults??[]),{target:'',value:''}]})}>Añadir valor del recurso</button>
      </details>
      <details><summary>Ver la forma del recurso por fila</summary><div className="table-scroll"><table><thead><tr><th>Columna</th><th>Significado en {value.resourceType}</th></tr></thead><tbody>{schema.columns.map(c=>{const m=value.columns.find(item=>item.key===c.key);return <tr key={c.key}><td>{c.label}</td><td>{m?m.target+' · '+(m.dataType?typeLabel(m.target,m.dataType):'Alternativa de tipos'):'Sin definir'}</td></tr>;})}</tbody></table></div></details>
    </>}
  </section>;
}
