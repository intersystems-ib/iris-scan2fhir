import { useEffect, useState } from 'react';
import { request, type FHIRPreview, type TablePreview } from './api';
import type { Catalog, DocumentDefinition, FHIRMapping } from './catalog';
import { FHIRMappingEditor } from './FHIRMappingEditor';

export function FHIRPreviewPanel({preview}:{preview:TablePreview}) {
  const [catalog,setCatalog]=useState<Catalog|null>(null),[definition,setDefinition]=useState<DocumentDefinition|null>(null);
  const [mapping,setMapping]=useState<FHIRMapping>({enabled:false,rules:[]});
  const [result,setResult]=useState<FHIRPreview|null>(preview.fhir??null),[busy,setBusy]=useState(false),[error,setError]=useState(''),[notice,setNotice]=useState('');
  useEffect(()=>{let stopped=false;request<Catalog>('/catalog').then(data=>{if(stopped)return;setCatalog(data);const pinned=data.documents.find(d=>String(d.id)===String(preview.definitionId));setDefinition(pinned??null);setMapping(pinned?.fhirMapping??{enabled:false,rules:[]});}).catch(e=>{if(!stopped)setError(e.message);});return()=>{stopped=true;};},[preview.definitionId]);
  async function generate(){setBusy(true);setError('');setNotice('');setResult(null);try{setResult(await request<FHIRPreview>('/fhir/preview',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({analysisId:preview.analysisId,configuration:mapping})}));}catch(e){setError(e instanceof Error?e.message:'No se pudo transformar.');}finally{setBusy(false);}}
  async function save(){if(!definition)return;setBusy(true);setError('');setNotice('');try{
    const {laboratory,code,name,enabled,recognition,headerAliases,tableTypes,headerExtraction,tables,tableGroups}=definition;
    const saved=await request<{saved:{id:string;version:number}}>('/catalog/documents',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({laboratory,code,name,enabled,recognition,headerAliases,tableTypes,tables,tableGroups,headerExtraction,fhirMapping:mapping,baseVersion:definition.version})});
    const fresh=await request<Catalog>('/catalog');setCatalog(fresh);setDefinition(fresh.documents.find(d=>String(d.id)===String(saved.saved.id))??definition);setNotice('Mapeo guardado en la versión '+saved.saved.version+'. Se utilizará en nuevos análisis de este formato.');
  }catch(e){setError(e instanceof Error?e.message:'No se pudo guardar.');}finally{setBusy(false);}}
  function download(){if(!result?.bundle)return;const url=URL.createObjectURL(new Blob([JSON.stringify(result.bundle,null,2)],{type:'application/fhir+json'}));const anchor=document.createElement('a');anchor.href=url;anchor.download='laboratorio-fhir-r5.json';anchor.click();setTimeout(()=>URL.revokeObjectURL(url),1000);}
  return <section className="catalog-card" aria-label="Transformación a FHIR R5">
    <h2>Transformar a FHIR R5</h2><p>Configura las equivalencias y comprueba el Bundle antes de descargarlo. Las filas y celdas con incidencias OCR pendientes se excluyen de los recursos afectados.</p>
    {error&&<p className="error" role="alert">{error}</p>}{notice&&<p className="catalog-notice" role="status">{notice}</p>}
    {!preview.analysisId&&<p>Vuelve a analizar el PDF para disponer de la copia trazada necesaria para el mapeo.</p>}
    <fieldset disabled={busy} className="catalog-fieldset">
      {definition&&catalog&&<details><summary>Configurar recursos y asignaciones</summary><FHIRMappingEditor value={mapping} onChange={value=>{setMapping(value);setResult(null);}} definition={definition} tableTypes={definition.tables??definition.tableTypeDefinitions??[]} preview={preview}/></details>}
      <div className="catalog-toolbar"><button className="primary" disabled={!definition||!preview.analysisId||!mapping.rules.length} onClick={generate}>Generar vista previa FHIR</button><button className="secondary" disabled={!definition} onClick={save}>Guardar mapeo en nueva versión del formato</button>{result?.bundle&&result.resourceCount>0&&<button className="secondary" onClick={download}>Descargar Bundle FHIR R5 ↓</button>}</div>
    </fieldset>
    {busy&&<p role="status">Aplicando y comprobando las asignaciones…</p>}
    {result&&<>
      <p className="catalog-notice">{result.status==='ready'?'Vista previa generada':result.status==='partial'?'Vista previa parcial: hay recursos excluidos':'Transformación bloqueada'} · {result.resourceCount} recursos{result.trace?' · Interoperabilidad '+result.trace.interopSessionId:''}</p>
      {result.error&&<p className="error">{result.error}</p>}
      {!!result.excluded?.length&&<details open><summary>Recursos y datos excluidos · {result.excluded.length}</summary><ul>{result.excluded.map((item,i)=><li key={i}>{item.rule}{item.page?' · Página '+item.page:''}{item.table?' · Tabla '+item.table:''}{item.row!==undefined&&item.row!==null?' · Fila '+(item.row+1):''}: {item.reason}</li>)}</ul></details>}
      <p>La comprobación cubre estructura R5 y las clases ObjectScript proporcionadas. La validación de perfiles y terminologías requiere una comprobación adicional antes de integrar los recursos en un sistema clínico.</p>
      {result.bundle&&<details open><summary>Bundle FHIR R5 · collection</summary><pre className="fhir-json">{JSON.stringify(result.bundle,null,2)}</pre></details>}
      {result.provenance&&<details><summary>Procedencia OCR de las asignaciones</summary><pre className="fhir-json">{JSON.stringify(result.provenance,null,2)}</pre></details>}
    </>}
  </section>;
}
