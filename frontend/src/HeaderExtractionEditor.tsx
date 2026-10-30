import type { Catalog, HeaderExtraction } from './catalog';

export function HeaderExtractionEditor({value,onChange,presets,tableMode=false}:{value:HeaderExtraction;onChange:(value:HeaderExtraction)=>void;presets:NonNullable<Catalog['headerPresets']>;tableMode?:boolean}) {
  function update(index:number,patch:Partial<HeaderExtraction['fields'][number]>) {
    onChange({...value,fields:value.fields.map((field,i)=>i===index?{...field,...patch}:field)});
  }
  return <section aria-label="Definición de campos de cabecera">
    <h3>{tableMode?'Campos de la tabla de etiquetas y valores':'Información de la primera página'}</h3>
    <p>Define los campos de este formato. Las etiquetas se buscan como texto literal junto a dos puntos o en celdas contiguas; puedes añadir variantes OCR e idiomas. Los valores se conservan sin completar información ausente.</p>
    <label>Empezar desde una configuración<select value="" onChange={event=>{
      const preset=presets.find(item=>item.code===event.target.value);
      if(preset)onChange(JSON.parse(JSON.stringify(preset.configuration)));
    }}><option value="">Seleccionar · Sustituye los campos de este borrador</option>{presets.map(preset=><option value={preset.code} key={preset.code}>{preset.name}</option>)}</select></label>
    {value.fields.map((field,i)=><div className="header-field-editor" key={i}>
      <h4>Campo {i+1}</h4>
      <div className="catalog-grid">
        <label>Código del campo<input value={field.key} onChange={e=>update(i,{key:e.target.value})}/></label>
        <label>Nombre visible<input value={field.label} onChange={e=>update(i,{label:e.target.value})}/></label>
        <label>Grupo<input value={field.group} onChange={e=>update(i,{group:e.target.value})} placeholder="patient, analysis, order, specimen…"/></label>
        <label>Tipo de valor<select value={field.valueType} onChange={e=>update(i,{valueType:e.target.value as 'text'|'numeric'})}><option value="text">Texto</option><option value="numeric">Numérico</option></select></label>
      </div>
      <label>Etiquetas OCR · Una por línea<textarea value={field.aliases.join('\n')} onChange={e=>update(i,{aliases:e.target.value.split('\n')})}/></label>
      <label className="catalog-check"><input type="checkbox" checked={field.required} onChange={e=>update(i,{required:e.target.checked})}/>Campo obligatorio</label>
      <button className="secondary" onClick={()=>onChange({...value,fields:value.fields.filter((_,j)=>i!==j)})}>Quitar campo</button>
    </div>)}
    <button className="secondary" disabled={value.fields.length>=64} onClick={()=>onChange({...value,fields:[...value.fields,{key:'',label:'',group:'document',aliases:[],required:false,valueType:'text'}]})}>Añadir campo de cabecera</button>
    <label>Fin de cabecera · Etiquetas de inicio del contenido, una por línea<textarea value={value.stopLabels.join('\n')} onChange={e=>onChange({...value,stopLabels:e.target.value.split('\n')})}/></label>
    <p>Las cabeceras de tablas de resultados también delimitan esta zona según los alias del documento. Sin campos configurados, se conserva el texto OCR para revisión.</p>
  </section>;
}
