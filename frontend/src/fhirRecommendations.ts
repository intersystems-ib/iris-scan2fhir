import type {TableSchema,RowFHIRMapping,ColumnRole} from './catalog';

export interface RecommendationField {path:string;types:string[]}
const normalize=(text:string)=>text.normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase().replace(/\s+/g,' ').replace(/^[ :.]+|[ :.]+$/g,'');
const aliases:Record<string,ColumnRole>={};
for(const [role,labels] of Object.entries({test:['prueba','pruebas','determinación','determinaciones','parámetro','analito','análisis','examen','test','analyte'],value:['resultado','resultados','valor','result','value'],unit:['unidad','unidades','units','unit'],referenceRange:['valores de referencia','valores de referencla','valor de referencia','rango de referencia','intervalo de referencia','referencia','reference range','valores normales']})){
  for(const label of labels)aliases[normalize(label)]=role as ColumnRole;
}
function columns(schema:TableSchema){return schema.columns.map((column,index)=>{
  const parts=(schema.grid?.headers[index]??column.label).split('·').map(normalize);
  const role=column.role!=='note'?column.role:aliases[parts[parts.length-1]]??'note';
  return {...column,role,group:column.group||parts.slice(0,-1).join(' · ')||'primary'};
});}
export function recommendedResource(schema:TableSchema):string {
  const cols=columns(schema),values=cols.filter(c=>c.role==='value');
  return cols.filter(c=>c.role==='test').length===1&&values.length>0&&new Set(values.map(c=>c.group)).size===values.length?'Observation':'';
}
export function recommendColumns(schema:TableSchema,fields:RecommendationField[]):RowFHIRMapping['columns'] {
  if(!recommendedResource(schema))return [];
  const cols=columns(schema),values=cols.filter(c=>c.role==='value'),candidates:RowFHIRMapping['columns']=[];
  for(const col of cols){
    const index=values.findIndex(v=>v.group===col.group),base=values.length>1&&index>=0?'component['+index+'].':'';
    let target='';
    if(col.role==='test')target='code';
    // Grid text is a literal storage format, not a declaration that all measurements are strings.
    const valueType=schema.kind==='grid'?'auto':values[index]?.valueType;
    if(col.role==='value')target=base+(valueType==='text'?'valueString':valueType==='numeric'?'valueQuantity':'value[x]');
    if(col.role==='unit'&&index>=0&&valueType!=='text')target=base+'valueQuantity.unit';
    if(col.role==='referenceRange'&&index>=0)target=base+'referenceRange[0]';
    const field=fields.find(f=>f.path===target.replace(/\[\d+\]/g,'[0]'));
    if(field)candidates.push({key:col.key,target,dataType:target.includes('[x]')?'':field.types[0]??''});
  }
  return candidates.filter(c=>candidates.filter(other=>other.target===c.target).length===1);
}
const canonical=(path:string)=>path.replace(/value(?:Quantity|String|Boolean|Integer|CodeableConcept|Range|Ratio|Time|DateTime|Period|SampledData|Attachment|Reference)(?=\.|$)/g,'value[x]');
export function mergeRecommendation(current:RowFHIRMapping|null,proposed:RowFHIRMapping['columns']):{mapping:RowFHIRMapping;addedKeys:string[]} {
  const existing=current?.columns??[],occupied=existing.map(c=>canonical(c.target));
  const additions=proposed.filter(c=>!existing.some(old=>old.key===c.key)&&!occupied.some(path=>{const next=canonical(c.target);return path===next||path.startsWith(next+'.')||next.startsWith(path+'.');}));
  return {mapping:{...(current??{resourceType:'Observation',columns:[]}),columns:[...existing,...additions]},addedKeys:additions.map(c=>c.key)};
}
