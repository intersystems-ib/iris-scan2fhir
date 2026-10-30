import type { ReconstructedTable, TablePreview } from './api';
import { FHIRPreviewPanel } from './FHIRPreviewPanel';

export function duration(ms?:number) {
  if(ms===undefined)return 'No disponible';
  return new Intl.NumberFormat('es-ES',{maximumFractionDigits:2}).format(ms/1000)+' s';
}

function OriginalTable({table}:{table:ReconstructedTable}) {
  const cells=Object.values(table.sourceCells??{}).sort((a,b)=>a.row-b.row||a.cell-b.cell);
  const rows=[...new Set(cells.map(c=>c.row))];
  return cells.length?<div className="table-scroll"><table><tbody>{rows.map(row=><tr key={row}>{cells.filter(c=>c.row===row).map(cell=>{
    const Cell=cell.tag==='th'?'th':'td';
    return <Cell key={cell.id} colSpan={cell.colspan} rowSpan={cell.rowspan} title={cell.id}>{cell.text || '—'}</Cell>;
  })}</tr>)}</tbody></table></div>:<pre>{table.sourceHtml}</pre>;
}

function NormalizedTable({table}:{table:ReconstructedTable}) {
  const result=table.result;
  if(!result)return <p>{table.reason||'No se ha podido reconstruir esta tabla.'}</p>;
  if(result.kind==='label-value-candidate')return <p>Posible tabla de información sin cabecera. Define sus etiquetas y valores en las tablas del documento para confirmar la interpretación.</p>;
  const meaning=result.expectedStructure?.tableType.schema?.rowMapping;
  const information=result.expectedStructure?.tableType.schema?.informationMapping;
  return <>
    {information?<p className="catalog-notice">Recursos definidos: {information.resources.map(r=>r.name+' ('+r.resourceType+')').join(', ')||'Sin definir'}.</p>:meaning&&<p className="catalog-notice">Cada fila representa un recurso <b>{meaning.resourceType}</b>.</p>}
    <div className="table-scroll"><table><thead><tr>{result.columns.map((c,i)=>{const field=information?.columns.find(m=>m.key===c.key)??meaning?.columns.find(m=>m.key===c.key);const resource=information?.resources.find(r=>r.id===information.columns.find(m=>m.key===c.key)?.resourceId);return <th key={i} title={c.sourceHeader}>{c.label}<small className="column-type">{c.valueType==='numeric'?'Numérico':c.valueType==='text'?'Texto':'Mixto / sin definir'}</small>{(meaning||information)&&<small className="column-type">{field?.target?(resource?resource.name+' → ':'')+field.target+' · '+(field.dataType||'Tipo variable'):'Sin asignar · Sólo OCR'}</small>}</th>;})}</tr></thead>
      <tbody>{result.rows.map((row,i)=>{
        const detail=result.rowDetails[i];
        return <tr key={i} className={detail?.issues.length?'row-review':''}>{row.map((cell,j)=><td key={j} title={'Origen OCR: '+cell.sourceCells.join(', ')}>{cell.text||'—'}{cell.unit&&<span className="inline-unit"> {cell.unit.text}</span>}</td>)}</tr>;
      })}</tbody>
    </table></div>
    {result.rowDetails.some(row=>row.notes.length>0)&&<details><summary>Notas asociadas a las pruebas</summary>{result.rowDetails.map((row,i)=>row.notes.map((note,j)=><p key={i+'-'+j}>Fila {i+1}: {note.text}</p>))}</details>}
    {result.notes.map((note,i)=><p key={i}>{note.text}</p>)}
    {!!result.excludedRows?.length&&<details><summary>Filas apartadas de los datos · {result.excludedRows.length}</summary><p>Las cabeceras, notas y filas sin alineación se conservan en el OCR original y en las notas.</p><ul>{result.excludedRows.map((row,i)=><li key={i}>Fila OCR {row.sourceRows.join(', ')} · {row.reason==='empty-column-header'?'Cabecera de una columna sin valores':row.reason==='repeated-or-unaligned-header'?'Cabecera repetida o sin datos alineados':row.reason==='unaligned-heading-or-name'?'Título o nombre sin valores alineados':'Cabecera, nota o información fuera de las filas de resultados'}</li>)}</ul></details>}
  </>;
}

export function TablePreviewPanel({preview,showFHIR=true}:{preview:TablePreview;showFHIR?:boolean}) {
  function download(){const url=URL.createObjectURL(new Blob([JSON.stringify(preview,null,2)],{type:'application/json'}));const a=document.createElement('a');a.href=url;a.download='tablas-deterministas.json';a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);}
  return <section className="result-card">
    <div className="result-header"><div><span className="eyebrow">EXTRACCIÓN DETERMINISTA</span><h2>{preview.filename}</h2><p>{preview.acceptedTables} tablas sin incidencias estructurales · {preview.reviewTables} por revisar</p></div><button className="secondary" onClick={download}>Descargar análisis ↓</button></div>
    <div className="preview-notice"><b>OCR → reglas de estructura y tipos</b><span>Se conservan los textos originales y los fragmentos que justifican cada separación o unión. Los valores dudosos quedan señalados para revisión.</span></div>
    <div className="trace-strip"><b>OCR: {duration(preview.timing?.ocrMs)}</b><span>Extracción de tablas: {duration(preview.timing?.extractionMs)}</span><span>Total: {duration(preview.timing?.totalMs)}</span></div>
    <div className="trace-strip"><b>{preview.laboratoryName}</b><span>{preview.documentDefinitionName} · v{preview.definitionVersion}</span><span>Interoperabilidad {preview.trace.interopSessionId}</span></div>
    <div className="preview-content">
      {preview.firstPageInformation&&!preview.pages.some(p=>p.tables.some(t=>t.result?.kind==='label-value'))&&<section className="reconstruction-table" aria-label="Información del documento">
        <h3>Información del documento · Página {preview.firstPageInformation.page}</h3>
        {preview.firstPageInformation.status==='not-configured'&&<p>Este formato aún no tiene campos de cabecera configurados. Puedes definirlos en Laboratorios y formatos. El texto OCR se conserva a continuación.</p>}
        {preview.firstPageInformation.fields.length>0?<div className="table-scroll"><table><thead><tr><th>Campo</th><th>Valor reconocido</th></tr></thead><tbody>{preview.firstPageInformation.fields.map((field,i)=><tr key={i}><td>{field.label}</td><td title={'Etiqueta OCR: '+field.sourceLabel}>{field.value||'—'}</td></tr>)}</tbody></table></div>:<p>No se han reconocido campos etiquetados. Revisa el texto de la primera página.</p>}
        {preview.firstPageInformation.issues.map((issue,i)=><p className="validation-issues" key={i}>{issue.message}</p>)}
        <details><summary>Ver cabecera original reconocida por el OCR</summary><pre>{preview.firstPageInformation.sourceText}</pre></details>
      </section>}
      {!preview.pages.some(p=>p.tables.length)&&<p>No se han detectado tablas HTML completas en el OCR.</p>}
      {preview.pages.map(page=>page.tables.map(table=><article className="reconstruction-table" key={page.page+'-'+table.id}>
        <h3>Página {page.page} · Tabla {table.id.slice(1)}<small>{table.status==='accepted'?'Sin incidencias estructurales':'Requiere revisión'} · {duration(table.extractionMs)}</small></h3>
        <p>Plantilla: {table.result?.kind==='label-value-candidate'?'Candidata a tabla de información · Pendiente de confirmar':table.result?.expectedStructure?.tableType.name??'Estructura de cabeceras OCR'}</p>
        {table.sourceDerivation&&<p>Tabla informativa derivada de las líneas OCR de la primera página. Revisa sus etiquetas y valores antes de asignar campos FHIR.</p>}
        {table.result?.issues.length?<div className="validation-issues"><b>Incidencias detectadas</b><ul>{table.result.issues.map((issue,i)=><li key={i}>{issue.message} <small>{issue.sourceCells.join(', ')}</small></li>)}</ul></div>:null}
        {table.reason&&<p className="catalog-notice">{table.reason}</p>}
        <div className="preview-comparison"><section><h4>Tabla original del OCR</h4><OriginalTable table={table}/></section><section><h4>Tabla reconstruida mediante reglas</h4><NormalizedTable table={table}/></section></div>
        {table.result&&<details><summary>Ver {table.result.corrections.length} reglas aplicadas</summary><ul>{table.result.corrections.map((change,i)=><li key={i}>{change.message} <small>{change.sourceCells.join(', ')}</small></li>)}</ul></details>}
        {table.result&&<details><summary>Ver procedencia de cada valor y tipo de columna</summary><pre>{JSON.stringify({columns:table.result.columns,rows:table.result.rows,validation:table.result.validation},null,2)}</pre></details>}
        <details><summary>Ver HTML original del OCR</summary><pre>{table.sourceHtml}</pre></details>
      </article>))}
      {showFHIR&&<FHIRPreviewPanel key={preview.analysisId??preview.trace.requestId} preview={preview}/>}
    </div>
  </section>;
}
