import {useEffect,useState} from 'react';
import {emptySchema,type TableType,type ColumnRole,type TableGroup,type Catalog} from './catalog';
import {TableFHIREditor} from './TableFHIREditor';
import {HeaderExtractionEditor} from './HeaderExtractionEditor';
import {RowFHIRMappingEditor} from './RowFHIRMappingEditor';
import type {TablePreview,ReconstructedTable} from './api';
import {InformationTableEditor} from './InformationTableEditor';
import {InformationFHIRMappingEditor} from './InformationFHIRMappingEditor';

const roles:[ColumnRole,string][]=[['test','Prueba'],['value','Resultado'],['unit','Unidad'],['referenceRange','Referencia'],['note','Nota']];
export function DocumentTablesEditor({tables,onChange,usedCodes,groups,onGroupsChange,usedGroups,presets,sample}:{tables:TableType[];onChange:(tables:TableType[])=>void;usedCodes:string[];groups:TableGroup[];onGroupsChange:(groups:TableGroup[])=>void;usedGroups:string[];presets:NonNullable<Catalog['headerPresets']>;sample?:TablePreview|null}){
  const [selected,setSelected]=useState('');
  const table=tables.find(t=>t.code===selected)??tables[0];
  const [informationPreview,setInformationPreview]=useState<NonNullable<ReconstructedTable['result']>|null>(null);
  useEffect(()=>setInformationPreview(null),[table?.code,table?.schema.labelFields,table?.schema.stopLabels]);
  const example=sample?.pages.flatMap(p=>p.tables).find(t=>t.result?.expectedStructure?.tableType.code===table?.code);
  const sameFields=JSON.stringify(table?.schema.labelFields)===JSON.stringify(example?.result?.expectedStructure?.tableType.schema?.labelFields);
  const information=informationPreview??(sameFields&&example?.result?.kind==='label-value'?example.result:null);
  const values=information?Object.fromEntries(information.columns.map((c,i)=>[c.key??'',information.rows[0]?.[i]?.text??''])):undefined;
  function update(patch:Partial<TableType>){if(table)onChange(tables.map(t=>t.code===table.code?{...t,...patch}:t));}
  function column(index:number,patch:Partial<TableType['schema']['columns'][number]>){if(table)update({schema:{...table.schema,columns:table.schema.columns.map((c,i)=>i===index?{...c,...patch}:c),...(patch.key&&table.schema.rowMapping?{rowMapping:{...table.schema.rowMapping,columns:table.schema.rowMapping.columns.map(c=>c.key===table.schema.columns[index].key?{...c,key:patch.key!}:c)}}:{})}});}
  return <section aria-label="Tablas del documento">
    <h3>Tablas del documento</h3><p>Estas tablas pertenecen exclusivamente a este formato del laboratorio. Sus columnas, reglas OCR y destinos FHIR se guardan junto con la versión del documento.</p>
    <details><summary>Grupos de tablas · Opcional</summary><p>Un grupo puede generar un recurso FHIR que reúna datos de varias tablas. Cada tabla pertenece como máximo a un grupo.</p>
    {groups.map(g=><div className="catalog-toolbar" key={g.code}><label>Nombre del grupo<input value={g.name} onChange={e=>onGroupsChange(groups.map(item=>item.code===g.code?{...item,name:e.target.value}:item))}/></label><span>{g.tables.length} tablas</span><button className="secondary" disabled={usedGroups.includes(g.code)} onClick={()=>onGroupsChange(groups.filter(item=>item.code!==g.code))}>Quitar grupo</button></div>)}
    <button className="secondary" disabled={groups.length>=20} onClick={()=>{let n=1;while(groups.some(g=>g.code==='group-'+n))n++;onGroupsChange([...groups,{code:'group-'+n,name:'Nuevo grupo',tables:[]}]);}}>Añadir grupo de tablas</button>
    </details>
    <div className="catalog-definition-list">{tables.map(t=><button className={t.code===table?.code?'selected':''} key={t.code} onClick={()=>setSelected(t.code)}><b>{t.name}</b><span>{t.schema.columns.length} columnas{t.schema.informationMapping?' · '+t.schema.informationMapping.resources.length+' instancias FHIR':t.schema.rowMapping?' · '+(t.schema.kind==='label-value'?'Recurso: ':'Cada fila: ')+t.schema.rowMapping.resourceType:t.schema.fhir?' · '+t.schema.fhir.resourceType:''}</span></button>)}</div>
    <button className="secondary" disabled={tables.length>=20} onClick={()=>{let n=1;while(tables.some(t=>t.code==='table-'+n))n++;const code='table-'+n;onChange([...tables,{id:code,code,name:'Nueva tabla',version:1,isLatest:true,schema:emptySchema()}]);setSelected(code);}}>Añadir tabla al documento</button>
    {table&&<div className="catalog-form">
      <div className="catalog-grid"><label>Nombre de la tabla<input value={table.name} onChange={e=>update({name:e.target.value})}/></label><label>Identificador de tabla<input value={table.code} readOnly/></label></div>
      {table.schema.kind==='grid'&&<p className="catalog-notice">Cabeceras y columnas alineadas. Los valores se conservan literalmente; su significado FHIR se configura manualmente.</p>}
      {sample?.pages.flatMap(page=>page.tables.filter(t=>t.result?.expectedStructure?.tableType.code===table.code).map(t=>({page:page.page,table:t}))).slice(0,3).map(item=><details open key={item.page+'-'+item.table.id}><summary>Ejemplo OCR alineado · Página {item.page} · {item.table.id}</summary><div className="table-scroll"><table><thead><tr>{item.table.result?.columns.map((c,i)=><th key={i}>{c.label}</th>)}</tr></thead><tbody>{item.table.result?.rows.slice(0,6).map((row,i)=><tr key={i}>{row.map((cell,j)=><td key={j}>{cell.text||'—'}</td>)}</tr>)}</tbody></table></div></details>)}
      {(table.schema.kind==='label-value'||table.schema.grid?.headerless||table.schema.kind==='unclassified')&&<InformationTableEditor key={'information-'+table.code} schema={table.schema} sample={example} onPreview={setInformationPreview} onChange={schema=>update({schema})}/>}
      {table.schema.kind==='label-value'&&<details><summary>Editar etiquetas y campos detectados</summary><HeaderExtractionEditor tableMode value={{fields:table.schema.labelFields??[],stopLabels:table.schema.stopLabels??[]}} presets={presets} onChange={config=>update({schema:{...table.schema,labelFields:config.fields,stopLabels:config.stopLabels,columns:config.fields.map(f=>({key:f.key,label:f.label,role:'note',group:f.group,required:f.required,valueType:f.valueType}))}})}/></details>}
      {table.schema.kind==='label-value'?<InformationFHIRMappingEditor key={table.code} schema={table.schema} sampleValues={values} onChange={informationMapping=>update({schema:{...table.schema,informationMapping,rowMapping:null}})}/>:<RowFHIRMappingEditor key={table.code} schema={table.schema} sampleValues={values} onChange={rowMapping=>update({schema:{...table.schema,rowMapping}})}/>}
      <details><summary>Configuración avanzada · OCR y reglas anteriores</summary>
      <div className="catalog-grid">
        <label>Tipo de tabla<select disabled={table.schema.kind==='grid'} value={table.schema.kind??'records'} onChange={e=>update({schema:{...table.schema,kind:e.target.value as TableType['schema']['kind'],...(e.target.value==='label-value'?{producesResults:false,labelFields:table.schema.labelFields??[],pageScope:'first'}:e.target.value==='unclassified'?{producesResults:false,columns:table.schema.columns.map(c=>({...c,role:'note' as const,required:false}))}:table.schema.kind==='unclassified'?{}:{columns:emptySchema().columns,producesResults:true})}})}><option value="grid">Cabeceras y columnas · Alineación estructural</option><option value="unclassified">Sin clasificar · Pendiente de revisión</option><option value="records">Registros con columnas</option><option value="label-value">Etiquetas y valores · Sin cabecera de columnas</option></select></label>
        <label>Páginas donde puede aparecer<select value={table.schema.pageScope??'all'} onChange={e=>update({schema:{...table.schema,pageScope:e.target.value as 'first'|'all'}})}><option value="all">Todas las páginas</option><option value="first">Sólo la primera página</option></select></label>
        <label>Grupo de la tabla<select value={groups.find(g=>g.tables.includes(table.code))?.code??''} onChange={e=>onGroupsChange(groups.map(g=>({...g,tables:[...g.tables.filter(code=>code!==table.code),...(g.code===e.target.value?[table.code]:[])]})))}><option value="">Sin grupo</option>{groups.map(g=><option value={g.code} key={g.code}>{g.name}</option>)}</select></label>
      </div>
      <TableFHIREditor value={table.schema.fhir??null} onChange={fhir=>update({schema:{...table.schema,fhir}})}/>
      {table.schema.kind!=='label-value'&&<>
      <h4>Columnas de la tabla</h4><div className="table-scroll"><table className="catalog-columns"><thead><tr><th>Código</th><th>Título</th><th>Contenido</th><th>Tipo de valor</th><th>Grupo</th><th>Obligatoria</th><th/></tr></thead><tbody>
        {table.schema.columns.map((c,i)=><tr key={i}>
          <td><input aria-label={'Código columna '+(i+1)} value={c.key} onChange={e=>column(i,{key:e.target.value})}/></td>
          <td><input aria-label={'Título columna '+(i+1)} value={c.label} onChange={e=>column(i,{label:e.target.value})}/></td>
          <td><select aria-label={'Contenido columna '+(i+1)} disabled={table.schema.kind==='grid'} value={c.role} onChange={e=>column(i,{role:e.target.value as ColumnRole})}>{roles.map(([key,label])=><option value={key} key={key}>{label}</option>)}</select></td>
          <td><select aria-label={'Tipo de valor columna '+(i+1)} value={c.valueType??(c.role==='value'?'auto':'text')} onChange={e=>column(i,{valueType:e.target.value as 'numeric'|'text'|'auto'})}><option value="numeric">Numérico</option><option value="text">Texto</option><option value="auto">Mixto / sin definir</option></select></td>
          <td><input aria-label={'Grupo columna '+(i+1)} value={c.group} onChange={e=>column(i,{group:e.target.value})}/></td>
          <td><input type="checkbox" aria-label={'Columna '+(i+1)+' obligatoria'} checked={c.required} onChange={e=>column(i,{required:e.target.checked})}/></td>
          <td><button className="secondary" disabled={table.schema.kind==='grid'||table.schema.columns.length<2} onClick={()=>update({schema:{...table.schema,columns:table.schema.columns.filter((_,j)=>j!==i)}})}>Quitar columna</button></td>
        </tr>)}
      </tbody></table></div>
      <button className="secondary" disabled={table.schema.kind==='grid'||table.schema.columns.length>=16} onClick={()=>{let n=1;while(table.schema.columns.some(c=>c.key==='column-'+n))n++;update({schema:{...table.schema,columns:[...table.schema.columns,{key:'column-'+n,label:'Nueva columna',role:'value',group:'primary',required:false}]}});}}>Añadir columna</button>
      <div className="catalog-options">{([['producesResults','Genera resultados de laboratorio'],['allowSplitRows','Permite nombres y valores en filas separadas'],['allowMissingHeaders','Permite continuación sin cabecera'],['allowCombinedValueUnit','Permite resultado y unidad juntos'],['allowMultilineReferences','Permite rangos en varias líneas']] as const).map(([key,label])=><label className="catalog-check" key={key}><input type="checkbox" disabled={table.schema.kind==='grid'} checked={table.schema[key]} onChange={e=>update({schema:{...table.schema,[key]:e.target.checked}})}/>{label}</label>)}</div>
      </>}
      </details>
      <button className="secondary" disabled={tables.length<2||usedCodes.includes(table.code)||groups.some(g=>g.tables.includes(table.code))} onClick={()=>onChange(tables.filter(t=>t.code!==table.code))}>Quitar tabla del documento</button>
      {usedCodes.includes(table.code)&&<p>Esta tabla tiene asignaciones FHIR. Para quitarla, revisa primero sus reglas.</p>}
    </div>}
  </section>;
}
