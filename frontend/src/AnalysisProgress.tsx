import { useEffect, useState } from 'react';
import { request } from './api';
import { duration } from './TablePreviewPanel';

interface Progress {
  phase:'queued'|'ocr'|'identification'|'discovery'|'preparation'|'extraction'|'fhir'|'completed'|'failed';
  page:number;table:string;variant:string;elapsedMs:number;stageElapsedMs:number;ocrMs?:number;
}
const labels:Record<Progress['phase'],string>={
  queued:'Esperando el inicio del análisis',ocr:'Extrayendo texto y tablas con OCR',
  identification:'Identificando el laboratorio y su plantilla',preparation:'Preparando las tablas del documento',
  discovery:'Detectando estructuras y guardando el formato para revisión',extraction:'Normalizando y validando las tablas',fhir:'Construyendo y comprobando el Bundle FHIR JSON',completed:'Análisis completado',failed:'La extracción se ha detenido',
};
export function AnalysisProgress({analysisId,discovery=false}:{analysisId:string;discovery?:boolean}) {
  const [sample,setSample]=useState<{data:Progress;received:number}|null>(null);
  const [now,setNow]=useState(()=>performance.now());
  const [started]=useState(()=>performance.now());
  const [unavailable,setUnavailable]=useState(false);
  useEffect(()=>{
    let stopped=false,timer:ReturnType<typeof setTimeout>;
    const controller=new AbortController();
    async function poll(){
      try{
        const data=await request<Progress>('/table-preview/status/'+encodeURIComponent(analysisId),{signal:controller.signal});
        if(stopped)return;
        setSample({data,received:performance.now()});setUnavailable(false);
        if(data.phase==='completed'||data.phase==='failed')return;
      }catch{
        if(stopped)return;
        setUnavailable(true);
      }
      if(!stopped)timer=setTimeout(poll,1000);
    }
    void poll();
    const tick=setInterval(()=>setNow(performance.now()),250);
    return ()=>{stopped=true;controller.abort();clearTimeout(timer);clearInterval(tick);};
  },[analysisId]);
  const progress=sample?.data,terminal=progress?.phase==='completed'||progress?.phase==='failed';
  const since=sample&&!terminal?Math.max(0,now-sample.received):0;
  return <section className="analysis-progress" aria-label="Estado del análisis">
    {discovery?<p><b>Descubrimiento del formato y sus tablas</b></p>:<div className="extraction-steps"><span><b>1 · Extraer y normalizar tablas</b>{progress?.phase==='fhir'||progress?.phase==='completed'?' · Completado':' · En curso'}</span><span><b>2 · Construir Bundle JSON</b>{progress?.phase==='fhir'?' · En curso':progress?.phase==='completed'?' · Completado':' · Pendiente'}</span></div>}
    <div role="status" aria-live="polite"><b>{progress?labels[progress.phase]:'Subiendo el PDF y esperando el inicio'}</b>
      {progress?.phase==='extraction'&&<p>Página {progress.page} · Tabla {progress.table.replace(/^t/,'')}</p>}
      {progress?.phase==='preparation'&&progress.page>0&&<p>Página {progress.page}</p>}
    </div>
    <div className="progress-clocks"><span>Tiempo transcurrido: <b>{duration(progress?progress.elapsedMs+since:Math.max(0,now-started))}</b></span>
      {progress&&!terminal&&<span>Etapa actual: <b>{duration(progress.stageElapsedMs+since)}</b></span>}
      {progress?.ocrMs!==undefined&&<span>OCR terminado: <b>{duration(progress.ocrMs)}</b></span>}
    </div>
    <p className="privacy-note">{unavailable?'Esperando la actualización del servidor…':'Estado actualizado cada segundo. El contador de la etapa incluye la espera en la cola de interoperabilidad.'}</p>
  </section>;
}
