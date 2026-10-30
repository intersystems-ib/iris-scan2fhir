import { useEffect, useRef, useState } from 'react';
import { request, type Health, type TablePreview } from './api';
import { CatalogManager } from './CatalogManager';
import type { Catalog } from './catalog';
import { ExtractionResult } from './ExtractionResult';
import { AnalysisProgress } from './AnalysisProgress';
import { TablePreviewPanel, duration } from './TablePreviewPanel';

export function App() {
  const [view,setView] = useState<'documents'|'catalog'|'discovery'>(()=>window.location.hash==='#catalog'?'catalog':window.location.hash==='#discovery'?'discovery':'documents');
  const [configureId,setConfigureId]=useState<string>();
  const [configureSample,setConfigureSample]=useState<TablePreview|null>(null);
  const discovering=view==='discovery';
  function navigate(next:typeof view,id?:string){setConfigureSample(id?preview:null);setView(next);setError('');setPreview(null);setConfigureId(id);}
  useEffect(()=>{const next=view==='catalog'?'#catalog':view==='discovery'?'#discovery':'';if(window.location.hash!==next)window.history.replaceState(null,'',window.location.pathname+window.location.search+next);},[view]);
  const [health, setHealth] = useState<Health | null>(null);
  const [file, setFile] = useState<File | null>(null);
  const [preview,setPreview]=useState<TablePreview|null>(null);
  const [definitions,setDefinitions]=useState<Catalog['documents']>([]);
  const [definitionId,setDefinitionId]=useState('');
  const [laboratories,setLaboratories]=useState<Catalog['laboratories']>([]),[laboratory,setLaboratory]=useState('');
  useEffect(()=>{if(view!=='catalog')request<Catalog>('/catalog').then(c=>{setLaboratories(c.laboratories.filter(l=>l.enabled));const latest=c.documents.filter(d=>d.isLatest&&d.enabled&&c.laboratories.some(l=>l.code===d.laboratory&&l.enabled));setDefinitions(latest);setDefinitionId(old=>{if(!old)return '';const prior=c.documents.find(d=>String(d.id)===old);return String(latest.find(d=>d.laboratory===prior?.laboratory&&d.code===prior?.code)?.id??'');});}).catch(()=>{});},[view]);
  const [error, setError] = useState('');
  const [busy, setBusy] = useState(false);
  const [analysisId,setAnalysisId] = useState('');
  const [dragging, setDragging] = useState(false);
  const picker = useRef<HTMLInputElement>(null);
  useEffect(() => {
    request<Health>('/health').then(setHealth).catch(() => setError('No se ha podido conectar con IRIS. Comprueba que los servicios están arrancados.'));

  }, []);
  function selectFile(candidate?: File) {
    if (!candidate || busy) return;
    setError('');
    if (!candidate.name.toLowerCase().endsWith('.pdf')) { setError('Selecciona un archivo PDF.'); return; }
    if (!candidate.size || candidate.size > (health?.maxPdfMB ?? 10) * 1024 * 1024) {
      setError(`El PDF debe tener contenido y no superar ${health?.maxPdfMB ?? 10} MB.`); return;
    }
    setFile(candidate); setPreview(null);
  }
  async function analyze() {
    if (!file) return;
    const id=crypto.randomUUID(); setAnalysisId(id);
    setBusy(true); setError(''); setPreview(null);
    try {
      const data = await request<TablePreview>(`/${discovering?'discovery':'extraction'}?analysisId=${id}&filename=${encodeURIComponent(file.name)}${!discovering&&definitionId?`&definitionId=${encodeURIComponent(definitionId)}`:''}${discovering&&laboratory?`&laboratory=${encodeURIComponent(laboratory)}`:''}`, {
        method: 'POST', headers: { 'Content-Type': 'application/pdf' }, body: file,
      });
      setPreview(data);
    } catch (e) { setError(e instanceof Error ? e.message : 'No se ha podido analizar el PDF.'); }
    finally { setBusy(false); }
  }
  return <div className="shell">
    <aside className="sidebar">
      <a className="brand" href="/" aria-label="IRIS Scan2FHIR inicio"><span className="brand-mark">S<span>2</span>F</span><span>IRIS <b>Scan2FHIR</b><small>DOCUMENT INTELLIGENCE</small></span></a>
      <div className="workspace-label">ESPACIO DE TRABAJO</div>
      <div className="workspace-nav"><button disabled={busy} className={discovering?'nav-active':'nav-alternative'} onClick={()=>navigate('discovery')}><span>⌕</span> Descubrimiento</button><button disabled={busy} className={view==='catalog'?'nav-active':'nav-alternative'} onClick={()=>navigate('catalog')}><span>▦</span> Configuración</button><button disabled={busy} className={view==='documents'?'nav-active':'nav-alternative'} onClick={()=>navigate('documents')}><span>▤</span> Generación FHIR</button></div>
      <div className="sidebar-footer"><span className={`connection-dot ${health ? 'online' : ''}`}/><div>{health ? 'IRIS conectado' : 'Sin conexión con IRIS'}<small>InterSystems · Interoperabilidad</small></div></div>
    </aside>
    <main>
      <header className="topbar"><span>{view==='catalog'?'Configuración':discovering?'Descubrimiento':'Generación FHIR'} <span className="slash">/</span> Laboratorio</span><span className="version">OCR + <b>Reglas</b></span></header>
      <div className="content">
        {view==='catalog'?<CatalogManager initialDefinitionId={configureId} sample={configureSample} onUpload={()=>navigate('documents')}/>:<>
        <div className="intro"><div className="eyebrow">{discovering?'NUEVOS FORMATOS':'EXTRACCIÓN EN DOS PASOS'}</div><h1>{discovering?'Descubrir las tablas de un documento.':'Del PDF al Bundle FHIR.'}</h1><p>{discovering?'Carga un ejemplo para detectar sus tablas y crear un formato revisable dentro del laboratorio. Después podrás configurar el significado de sus filas y columnas.':'Extrae y normaliza las tablas del documento y construye el Bundle JSON con el significado FHIR definido para sus filas y columnas.'}</p></div>
        <div className="workflow"><span><b>01</b> {discovering?'OCR y detección de estructuras':'Extraer y normalizar tablas'}</span><i/><span><b>02</b> {discovering?'Revisar en Configuración':'Construir el Bundle FHIR JSON'}</span></div>
        <section className="upload-card">
          <div className="section-title"><h2>{discovering?'Descubrir formato':'Extraer documento'}</h2><span>PDF · hasta {health?.maxPdfMB ?? 10} MB · {health?.maxPdfPages ?? 20} páginas</span></div>
          {!discovering&&<label className="preview-definition">Modelo de informe<select disabled={busy} value={definitionId} onChange={e=>setDefinitionId(e.target.value)}><option value="">Detectar entre los modelos existentes</option>{definitions.map(d=><option key={d.id} value={d.id}>{d.laboratoryName} · {d.name} · v{d.version}</option>)}</select></label>}
          {discovering&&<label className="preview-definition">Laboratorio<select disabled={busy} value={laboratory} onChange={e=>setLaboratory(e.target.value)}><option value="">Intentar identificarlo en el documento</option>{laboratories.map(l=><option key={l.code} value={l.code}>{l.name} · {l.code}</option>)}</select><small>Si es un laboratorio nuevo, puedes crearlo primero en Configuración. Los orígenes desconocidos quedan pendientes de identificar.</small></label>}
          <input ref={picker} type="file" accept="application/pdf,.pdf" disabled={busy} hidden onChange={e => { selectFile(e.target.files?.[0]); e.target.value = ''; }}/>
          <button className={`dropzone ${dragging ? 'dragging' : ''}`} disabled={busy} onClick={() => picker.current?.click()}
            onDragOver={e => { e.preventDefault(); setDragging(true); }} onDragLeave={() => setDragging(false)}
            onDrop={e => { e.preventDefault(); setDragging(false); selectFile(e.dataTransfer.files[0]); }}>
            <span className="upload-symbol">↥</span><strong>{file ? file.name : 'Arrastra tu informe de laboratorio aquí'}</strong>
            <span>{file ? `${(file.size / 1024 / 1024).toFixed(2)} MB · Pulsa para cambiar el archivo` : 'o pulsa para seleccionar un archivo PDF'}</span>
          </button>
          <div className="upload-actions"><span className="privacy-note">Indra OCR + reglas deterministas</span><button className="primary" disabled={!file || busy || !health} onClick={analyze}>{busy ? <><span className="spinner"/> Analizando documento…</> : <>{discovering?'Detectar tablas y formato':'Extraer y construir Bundle'} <span>↗</span></>}</button></div>
          <p className="privacy-note">{discovering?'Las tablas nuevas se guardan dentro de un formato para su revisión. No se genera un Bundle en este paso.':'Se utiliza una definición existente. Cada tabla y sus validaciones quedan en la traza de interoperabilidad.'}</p>
          {busy && analysisId && <AnalysisProgress key={analysisId} analysisId={analysisId} discovery={discovering}/>}
        </section>
        {error && <div className="error" role="alert">{error}</div>}
        {!preview && !busy && <section className="empty-state"><div className="empty-glyph">⌘</div><h2>{discovering?'Detecta un nuevo formato.':'Obtén el resultado del documento.'}</h2><p>{discovering?'Sube un ejemplo del laboratorio para reconocer sus estructuras de tabla.':'Sube un informe para extraer sus tablas y construir los recursos definidos en su formato.'}</p></section>}
        {preview&&(preview.mode==='discovery'?<><section className="catalog-card"><h2>{preview.discovery?.status==='recognized'?'Formato ya reconocido':'Formato descubierto'}</h2><p>{preview.documentDefinitionName} · {preview.laboratoryName} · {preview.discovery?.tableCount} estructuras · OCR {duration(preview.timing?.ocrMs)}</p><p>{preview.discovery?.laboratoryIdentified===false?'El laboratorio está pendiente de identificar. Revise su nombre, firma y activación en Configuración.':'Revise las estructuras detectadas y sus equivalencias antes de generar FHIR.'}</p><button className="primary" onClick={()=>navigate('catalog',String(preview.definitionId))}>Configurar este formato ↗</button></section><TablePreviewPanel preview={preview} showFHIR={false}/></>:<ExtractionResult key={preview.analysisId} preview={preview} onConfigure={()=>navigate('catalog',String(preview.definitionId))}/>)}
        </>}
        <footer className="main-footer"><span>IRIS Scan2FHIR</span><span>Interoperabilidad desde el origen.</span></footer>
      </div>
    </main>
  </div>;
}





