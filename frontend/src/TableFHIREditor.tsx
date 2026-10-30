import {useEffect,useState} from 'react';
import {request} from './api';
import type {TableFHIR} from './catalog';
import {FHIRTargetPicker} from './FHIRTargetPicker';

export function TableFHIREditor({value,onChange}:{value:TableFHIR|null;onChange:(value:TableFHIR|null)=>void}){
  const [model,setModel]=useState<{resources:string[];dataTypes:{name:string;kind:string}[]}>({resources:[],dataTypes:[]}),[error,setError]=useState('');
  useEffect(()=>{let stopped=false;request<typeof model>('/fhir/model').then(data=>{if(!stopped)setModel(data);}).catch(e=>{if(!stopped)setError(e.message);});return()=>{stopped=true;};},[]);
  return <section aria-label="Destino FHIR de la tabla">
    <h3>Recurso y tipo de datos de la tabla</h3>
    <p>Define el destino FHIR de esta tabla del documento. Se guarda con la versión documental; las equivalencias de las columnas se configuran en las reglas del mismo documento.</p>
    <label className="catalog-check"><input type="checkbox" checked={!!value} onChange={e=>onChange(e.target.checked?{resourceType:'',dataType:'',target:''}:null)}/>Definir destino FHIR para esta tabla</label>
    {error&&<p className="error" role="alert">{error}</p>}
    {value&&<>
      <div className="catalog-grid">
        <label>Recurso FHIR de la tabla<select value={value.resourceType} onChange={e=>onChange({...value,resourceType:e.target.value})}><option value="">Seleccionar recurso</option>{model.resources.map(r=><option value={r} disabled={r==='Bundle'} key={r}>{r}</option>)}</select></label>
        <label>Tipo de datos FHIR de la tabla<select value={value.dataType} onChange={e=>onChange({...value,dataType:e.target.value,target:''})}><option value="">Recurso completo · Sin tipo de dato interno</option>{model.dataTypes.map(t=><option value={t.name} key={t.name}>{t.name} · {t.kind==='primitive'?'Primitivo':'Complejo'}</option>)}</select></label>
      </div>
      {value.dataType&&value.resourceType&&<><p>Selecciona el campo del recurso que corresponde al tipo {value.dataType}. La compatibilidad se comprueba al guardar.</p><FHIRTargetPicker resource={value.resourceType} target={value.target} onChange={(target,dataType)=>onChange({...value,target,dataType:dataType||value.dataType})}/></>}
    </>}
  </section>;
}
