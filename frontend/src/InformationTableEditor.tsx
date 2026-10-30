import {useEffect,useRef,useState} from 'react';
import {request,type ReconstructedTable} from './api';
import type {TableSchema} from './catalog';
type Result=NonNullable<ReconstructedTable['result']>;
export function InformationTableEditor({schema,sample,onChange,onPreview}:{schema:TableSchema;sample?:ReconstructedTable;onChange:(schema:TableSchema)=>void;onPreview:(result:Result|null)=>void}){
  const [html,setHtml]=useState(sample?.sourceHtml??sample?.result?.sourceHtml??'');
  const [result,setResult]=useState<Result|null>(null),[error,setError]=useState(''),[busy,setBusy]=useState(false);
  const [trace,setTrace]=useState('');
  const current=JSON.stringify([schema.labelFields,schema.stopLabels,html]);
  const currentRef=useRef(current);currentRef.current=current;
  useEffect(()=>{setResult(null);onPreview(null);setError('');},[schema.labelFields,schema.stopLabels,html]);
  async function preview(convert=false){
    const requested=currentRef.current;
    setBusy(true);setError('');
    try{
      const data=await request<{schema:TableSchema;extraction:Result;catalogTrace:{interopSessionId:string}}>('/catalog/preview-information',{
        method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({html,...(!convert?{schema}:{})})});
      if(currentRef.current!==requested)return;
      if(convert)onChange({...schema,...data.schema,grid:undefined});
      else {setResult(data.extraction);onPreview(data.extraction);}
      setTrace(data.catalogTrace.interopSessionId);
    }catch(e){setError(e instanceof Error?e.message:'No se ha podido extraer la tabla.');}
    finally{setBusy(false);}
  }
  return <section aria-label="Extracción de tabla informativa">
    <h3>Etiquetas y valores del documento</h3>
    <p>Una tabla sin cabecera puede contener un único registro con los datos del paciente o del análisis. Las etiquetas identifican los campos; sus valores pueden estar en la misma celda o en una celda contigua.</p>
    {sample?.sourceDerivation&&<p className="catalog-notice">Tabla informativa derivada de las líneas OCR de la primera página. El OCR original se conserva y cada valor mantiene su procedencia.</p>}
    {schema.kind!=='label-value'?<button className="secondary" disabled={busy||!html.trim()} onClick={()=>preview(true)}>Tratar como tabla de etiquetas y valores</button>:<>
      <label>Dónde buscar esta información<select value={schema.pageScope??'first'} onChange={e=>onChange({...schema,pageScope:e.target.value as 'first'|'all'})}><option value="first">Sólo en la primera página</option><option value="all">En todas las páginas</option></select></label>
      <button className="secondary" disabled={busy||!html.trim()||!schema.labelFields?.length} onClick={()=>preview()}>Extraer valores con esta configuración</button>
      {busy&&<p role="status">Extrayendo valores…</p>}
      {result&&<><p>Un registro informativo · Sesión de interoperabilidad {trace}</p><div className="table-scroll"><table><thead><tr><th>Etiqueta / campo</th><th>Valor extraído</th><th>Celdas OCR</th></tr></thead><tbody>{result.columns.map((c,i)=><tr key={c.key}><td>{c.label}</td><td>{result.rows[0]?.[i]?.text||'Sin valor · No se completa automáticamente'}</td><td>{result.rows[0]?.[i]?.sourceCells.join(', ')}</td></tr>)}</tbody></table></div>{result.issues.map((issue,i)=><p className="validation-issues" key={i}>{issue.message}</p>)}{!!result.notes.length&&<details><summary>Contenido OCR sin asignar</summary>{result.notes.map((n,i)=><p key={i}>{n.text}</p>)}</details>}</>}
    </>}
    {error&&<p className="error" role="alert">{error}</p>}
    <details><summary>Tabla OCR usada para el ejemplo</summary><p>Abre la configuración desde el resultado de Descubrimiento o pega el HTML de otra tabla. Los valores de ejemplo no se guardan en la definición del formato.</p><textarea aria-label="HTML de la tabla informativa" value={html} onChange={e=>setHtml(e.target.value)} rows={6}/></details>
  </section>;
}
