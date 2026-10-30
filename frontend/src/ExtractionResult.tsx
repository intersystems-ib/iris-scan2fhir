import {useState} from 'react';
import {request,type TablePreview,type FHIRPreview} from './api';
import {TablePreviewPanel,duration} from './TablePreviewPanel';

export function ExtractionResult({preview,onConfigure}:{preview:TablePreview;onConfigure:()=>void}){
  const [result,setResult]=useState<FHIRPreview|undefined>(preview.fhir),[error,setError]=useState(''),[busy,setBusy]=useState(false),[buildMs,setBuildMs]=useState(preview.timing?.fhirMs);
  async function rebuild(){setBusy(true);setError('');const start=performance.now();try{setResult(await request<FHIRPreview>('/fhir/preview',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({analysisId:preview.analysisId})}));setBuildMs(performance.now()-start);}catch(e){setError(e instanceof Error?e.message:'No se pudo construir el Bundle.');}finally{setBusy(false);}}
  function download(){if(!result?.bundle)return;const url=URL.createObjectURL(new Blob([JSON.stringify(result.bundle,null,2)],{type:'application/fhir+json'}));const a=document.createElement('a');a.href=url;a.download=preview.filename.replace(/\.pdf$/i,'')+'-fhir-r5.json';a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);}
  const counts=new Map<string,number>();for(const entry of result?.bundle?.entry??[]){const type=String(entry.resource.resourceType);counts.set(type,(counts.get(type)??0)+1);}
  return <section className="extraction-result" aria-label="Resultado de la extracción">
    <div className="result-header"><div><span className="eyebrow">RESULTADO FINAL</span><h2>{preview.filename}</h2><p>{preview.laboratoryName} · {preview.documentDefinitionName} · v{preview.definitionVersion}</p></div></div>
    <div className="extraction-steps"><div><b>1 · Tablas extraídas y normalizadas</b><p>{preview.acceptedTables+preview.reviewTables} tablas · {preview.reviewTables} por revisar</p><small>{duration(preview.timing?.normalizationMs)} · OCR {duration(preview.timing?.ocrMs)}</small></div><div><b>2 · Bundle FHIR JSON</b><p>{result?.resourceCount??0} recursos · {result?.status==='ready'?'Construido':result?.status==='partial'?'Con incidencias':'Pendiente de resolver incidencias'}</p><small>{duration(buildMs)}</small></div></div>
    <section className="catalog-card">
      <h3>{result?.status==='ready'?'Bundle generado':result?.status==='partial'?'Bundle generado con incidencias':'La construcción del Bundle requiere revisión'}</h3>
      <p>Los recursos se construyen con las equivalencias de filas y columnas del formato. Los datos excluidos y las incidencias se detallan a continuación.</p>
      {!!counts.size&&<p className="catalog-notice">{[...counts].map(([type,n])=>n+' '+type).join(' · ')}</p>}
      {error&&<p className="error" role="alert">{error}</p>}{result?.error&&<p className="error">{result.error}</p>}
      <div className="catalog-toolbar"><button className="primary" disabled={!result?.bundle||!result.resourceCount} onClick={download}>Descargar Bundle JSON</button><button className="secondary" disabled={busy||!preview.analysisId} onClick={rebuild}>{busy?'Construyendo…':'Repetir sólo el paso 2'}</button><button className="secondary" onClick={onConfigure}>Configurar el formato</button></div>
      <p className="privacy-note">La repetición usa las tablas guardadas y la versión del formato con la que se analizaron. Tras cambiar el formato, vuelve a extraer el documento.</p>
      {!!result?.plan?.issues.length&&<details open><summary>Incidencias de configuración · {result.plan.issues.length}</summary><ul>{result.plan.issues.map((issue,i)=><li key={i}>{issue.tableName?issue.tableName+': ':''}{issue.column?'['+issue.column+'] ':''}{issue.message}</li>)}</ul></details>}
      {!!result?.excluded?.length&&<details open><summary>Recursos excluidos · {result.excluded.length}</summary><ul>{result.excluded.map((item,i)=><li key={i}>{item.page?'Página '+item.page+' · ':''}{item.table?'Tabla '+item.table+' · ':''}{item.row!==undefined&&item.row!==null?'Registro '+(item.row+1)+' · ':''}{item.reason}</li>)}</ul></details>}
      {!!result?.plan?.defaults.length&&<details><summary>Valores desconocidos indicados explícitamente · {result.plan.defaults.length}</summary><ul>{result.plan.defaults.map((item,i)=><li key={i}>{item.target}: {item.value}. {item.reason}</li>)}</ul></details>}
      {result?.bundle&&<details open><summary>Bundle FHIR R5 · JSON</summary><pre className="fhir-json">{JSON.stringify(result.bundle,null,2)}</pre></details>}
      <p className="privacy-note">Comprobado con la estructura R5 y las clases ObjectScript del proyecto. Los perfiles y terminologías específicos requieren validación adicional.</p>
    </section>
    <details open={result?.status==='blocked'}><summary>Ver paso 1 · Tablas, valores originales y validaciones</summary><TablePreviewPanel preview={preview} showFHIR={false}/></details>
    <details><summary>Procedencia de los recursos e interoperabilidad</summary><p>Sesión de extracción: {preview.trace.interopSessionId} · Sesión FHIR: {result?.trace?.interopSessionId??'No disponible'}</p><pre className="fhir-json">{JSON.stringify(result?.provenance??[],null,2)}</pre></details>
  </section>;
}
