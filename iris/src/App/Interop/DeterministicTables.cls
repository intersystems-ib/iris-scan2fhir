/// Deterministic reconstruction. Each output fragment points to literal OCR character offsets.
Class App.Interop.DeterministicTables Extends %RegisteredObject
{
ClassMethod Normalize(inputJSON As %String) As %String [ Language = python ]
{
    import json,re,html,unicodedata,iris
    from collections import defaultdict
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        source=json.loads(inputJSON)
        if source.get('documentDefinitionId'):
            catalog=json.loads(iris.cls('App.Catalog.Repository').SnapshotJSON())
            source['definition']=next((d for d in catalog['documents'] if int(d['id'])==int(source['documentDefinitionId'])),None)
            if not source['definition']:raise runtime.ProcessingError('Definición documental no encontrada.')
        binding=source.get('tableType')
        selected_type=next((t for t in (source.get('definition') or {}).get('tableTypeDefinitions',[]) if binding=={'code':t['code'],'version':t['version']}),None)
        if selected_type and selected_type['schema'].get('kind')=='grid':
            packet=json.loads(iris.cls('App.Interop.GridTables').Normalize(json.dumps({**source,'template':selected_type})))
            if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
            return packet['result']
        if source.get('rawFallback') and any(t['schema'].get('kind')=='grid' for t in (source.get('definition') or {}).get('tableTypeDefinitions',[])):
            packet=json.loads(iris.cls('App.Interop.GridTables').Normalize(json.dumps(source)))
            if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
            return packet['result']
        if source.get('rawFallback') or (selected_type and (selected_type['schema'].get('kind')=='unclassified' or (selected_type['schema'].get('kind')!='label-value' and not selected_type['schema']['producesResults']))):
            packet=json.loads(iris.cls('App.Interop.RawTables').Normalize(json.dumps({'html':source['html'],'template':selected_type})))
            if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
            return packet['result']
        if source.get('headerCandidate'):
            packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':source['html'],'mode':'deterministic'})))
            cells=packet['result']['sourceCells']
            return {'engine':'deterministic-v1','kind':'label-value-candidate','status':'review','sourceHtml':source['html'],'sourceCells':cells,'columns':[],'rows':[],'notes':[{'text':c['text'],'sourceCells':[key]} for key,c in cells.items() if c['text'].strip()],'corrections':[],'issues':[{'code':'header-table-candidate','sourceCells':[],'message':'Posible tabla de información: configure etiquetas y valores para confirmar su interpretación.'}],'coherentHtml':source['html'],'expectedStructure':None,'layout':None,'rowDetails':[],'validation':{'allNonemptyCellsAccountedFor':True}}
        label_type=next((t for t in (source.get('definition') or {}).get('tableTypeDefinitions',[]) if binding=={'code':t['code'],'version':t['version']} and t['schema'].get('kind')=='label-value'),None)
        if label_type:
            packet=json.loads(iris.cls('App.Interop.LabelValueTables').Normalize(json.dumps(source)))
            if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
            return packet['result']
        packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':source['html'],'mode':'deterministic'})))
        if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
        prepared=packet['result'];cells=prepared['sourceCells'];definition=source.get('definition') or {}
        corrections=[];issues=[];notes=[];headers=set();occupied={};physical=defaultdict(list)
        def norm(text):
            return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',text.casefold()) if not unicodedata.combining(c)).split()).strip(' :.')
        def issue(code,ids,message):
            item={'code':code,'sourceCells':list(dict.fromkeys(ids)),'message':message}
            if item not in issues:issues.append(item)
        def correction(code,ids,message):
            corrections.append({'rule':code,'sourceCells':list(dict.fromkeys(ids)),'message':message})
        for key,c in cells.items():
            row=c['row'];col=0
            for prev in physical[row]:col=max(col,prev['columnEnd'])
            while (row,col) in occupied:col+=1
            c['columnStart']=col;c['columnEnd']=col+c['colspan']
            for rr in range(row,row+c['rowspan']):
                for cc in range(col,col+c['colspan']):
                    if (rr,cc) in occupied:raise runtime.ProcessingError('Solapamiento de celdas HTML.')
                    occupied[rr,cc]=key
            physical[row].append(c)
        aliases=json.loads(iris.cls('App.Interop.TableStructure').HeaderAliases())
        for role,values in definition.get('headerAliases',{}).items():aliases.setdefault(role,[]).extend(values)
        role_aliases={('test' if role=='name' else role):{norm(v) for v in values} for role,values in aliases.items()}
        def header_roles(text):
            value=norm(text)
            exact=[r for r,values in role_aliases.items() if value in values]
            if exact:return exact
            if re.fullmatch(r'resultado[s]?\s+un[i1l]dades',value):return ['value','unit']
            if re.search(r'valor\s*%|v[.]?\s*absoluto|valor absoluto',value) and re.search(r'referen',value):return ['value','referenceRange']
            return []
        found=[];first_data=min([c['row'] for c in cells.values() if re.match(r'^\s*[<>≤≥=]?\s*[+-]?\d',c['text'])] or [99999])
        for c in cells.values():
            # A th tag is not evidence: measurement rows remain data.
            if c['row']>min(3,first_data-1):continue
            roles=header_roles(c['text'])
            if roles:
                found.append((c,roles));headers.add(c['id'])
        width=max((c['columnEnd'] for c in cells.values()),default=0)
        folded=False;column_defs=[];axis={};header_map=defaultdict(list)
        # Folded tables place a name in one row, then value/unit/range in three physical columns.
        test_heads=[c for c,roles in found if roles==['test']]
        bands=defaultdict(list)
        for c,roles in found:bands[c['row']].append((c,roles))
        for row,band in bands.items():
            roles=[role for c,rs in sorted(band,key=lambda x:x[0]['columnStart']) for role in rs]
            if width==3 and roles==['value','unit','referenceRange'] and test_heads and min(c['row'] for c in test_heads)<row:
                folded=True
        if folded:
            roles=['test','value','unit','referenceRange']
            axis={0:[1],1:[2],2:[3]}
            column_defs=[{'role':r,'group':'' if r=='test' else 'primary'} for r in roles]
            for c,rs in found:
                for r in rs:header_map[roles.index(r)].append(c['id'])
            correction('folded-header',list(headers),'Cabecera plegada: nombre y medidas ocupan filas físicas diferentes.')
        else:
            slots={}
            for c,rs in found:
                if len(rs)>c['colspan']:
                    issue('header-width',[c['id']],'La cabecera combina funciones sin una separación de columnas verificable.')
                    continue
                if len(rs)==1:
                    for col in range(c['columnStart'],c['columnEnd']):slots[col]=(rs[0],c)
                else:
                    for j,r in enumerate(rs):slots[c['columnStart']+j]=(r,c)
            # A grouped header's first text cell names the analyte column without saying "Prueba".
            if slots and 0 not in slots and any(rs==['value','referenceRange'] for c,rs in found):
                first=next((c for c in physical[min(bands)] if c['columnStart']==0 and c['text'].strip()),None)
                if first:
                    slots[0]=('test',first);headers.add(first['id'])
            if slots and set(slots)==set(range(width)):
                group='primary';group_no=0
                for pos in range(width):
                    role,c=slots[pos]
                    if role=='value':
                        group_no+=1;group='primary' if sum(1 for r,_ in slots.values() if r=='value')==1 else 'group-'+str(group_no)
                    if role=='test':g=''
                    else:g=group
                    # A spanned unit header may cover fragmented physical unit cells.
                    if column_defs and role=='unit' and column_defs[-1]['role']=='unit':
                        index=len(column_defs)-1;axis[pos]=[index]
                    else:
                        index=len(column_defs);axis[pos]=[index];column_defs.append({'role':role,'group':g})
                    header_map[index].append(c['id'])
            elif not slots:
                previous=source.get('previousLayout')
                if previous and previous.get('width')==width:
                    column_defs=previous['columns'];axis={int(k):v for k,v in previous['axis'].items()}
                    correction('continuation-header',[],'Tabla de continuación: se reutiliza la estructura anterior del mismo documento.')
                elif width==1 and not any(re.match(r'^\s*[<>≤≥]?\s*\d',c['text']) for c in cells.values()):
                    column_defs=[{'role':'note','group':''}];axis={0:[0]}
                else:issue('missing-header',[],'No existe una cabecera completa ni una estructura anterior compatible.')
            else:issue('incomplete-header',list(headers),'No se puede asignar una función inequívoca a cada columna física.')
        labels={'test':'Prueba','value':'Resultado','unit':'Unidad','referenceRange':'Referencia','note':'Nota'}
        matching=[]
        for t in definition.get('tableTypeDefinitions',[]):
            if [c['role'] for c in t['schema']['columns']]==[c['role'] for c in column_defs]:matching.append(t)
        binding=source.get('tableType')
        if not binding and not headers and source.get('previousLayout') and source['previousLayout'].get('width')==width:
            binding=source['previousLayout'].get('tableType')
        selected=next((t for t in matching if binding=={'code':t['code'],'version':t['version']}),None)
        if not selected and matching and not binding:
            # Equivalent column structures have identical extraction rules, even if type names differ.
            extraction_schema=lambda t:{key:value for key,value in t['schema'].items() if key not in ('fhir','rowMapping','pageScope')}
            if all(extraction_schema(t)==extraction_schema(matching[0]) for t in matching):selected=matching[0]
            else:issue('ambiguous-template',list(headers),'Varias plantillas comparten columnas pero declaran tipos o reglas distintos. Seleccione una estructura verificable.')
        if binding and not selected:
            issue('template-mismatch',list(headers),'La estructura de columnas no coincide con el tipo de tabla seleccionado.')
        schema=selected['schema'] if selected else {'allowSplitRows':True,'allowMultilineReferences':True,'allowCombinedValueUnit':True,'allowMissingHeaders':True,'columns':[]}
        columns=[]
        for i,col in enumerate(column_defs):
            label=selected['schema']['columns'][i]['label'] if selected else labels[col['role']]
            ids=list(dict.fromkeys(header_map[i]))
            value_type=selected['schema']['columns'][i].get('valueType','auto' if col['role']=='value' else 'text') if selected else ('auto' if col['role']=='value' else 'text')
            key=selected['schema']['columns'][i]['key'] if selected else 'column-'+str(i+1)
            columns.append({**col,'key':key,'valueType':value_type,'label':label,'headerCells':ids,'sourceHeader':'\n'.join(cells[k]['text'] for k in ids)})
        if selected and not headers and not schema['allowMissingHeaders']:issue('headers-required',[],'La plantilla requiere cabeceras: no se acepta una continuación sin ellas.')
        used=defaultdict(list)
        def fragment(key,start=0,end=None):
            text=cells[key]['text'];end=len(text) if end is None else end
            while start<end and text[start].isspace():start+=1
            while end>start and text[end-1].isspace():end-=1
            return {'cell':key,'start':start,'end':end}
        def content(parts,join='\n'):
            parts=[p for p in parts if p['end']>p['start']]
            for p in parts:used[p['cell']].append((p['start'],p['end']))
            return {'text':join.join(cells[p['cell']]['text'][p['start']:p['end']] for p in parts),'sourceCells':list(dict.fromkeys(p['cell'] for p in parts)),'sourceParts':parts}
        def blank():return {'text':'','sourceCells':[],'sourceParts':[]}
        def add(dest,incoming,separator='\n'):
            if not incoming['text']:return
            if dest['text']:dest['text']+=separator
            dest['text']+=incoming['text'];dest['sourceCells']=list(dict.fromkeys(dest['sourceCells']+incoming['sourceCells']));dest['sourceParts']+=incoming['sourceParts']
            if incoming.get('unit'):dest['unit']=incoming['unit']
        value_rx=re.compile(r'^\s*(?P<value>[<>≤≥=]?\s*[+-]?(?:\d+(?:[.,]\d+)?|[.,]\d+)(?:[eE][+-]?\d+)?)\s+(?P<unit>(?:\d+(?:\^\d+)?/|[A-Za-zµμ%°"\u0027])[^\n]*)\s*$')
        # No unit dictionary: retain OCR spellings. A suffix of only digits is never treated as a unit.
        numeric=re.compile(r'^[<>≤≥=]?\s*[+-]?(?:\d+(?:[.,]\d+)?|[.,]\d+)(?:[eE][+-]?\d+)?$')
        note_rx=re.compile(r'^(?:\(|estimaci[oó]n|c[aá]lculo|nota\b|observaci[oó]n|nuevos valores de referencia)|refer[ea]ncia seg[uú]n|homogeneizaci[oó]n|f[oó]rmula',re.I)
        rows=[];row_meta=[];pending=None;last=None
        def ids_of(row):return list(dict.fromkeys(k for cell in row for k in cell['sourceCells']))
        def emit(row,source_rows):
            nonlocal last
            rows.append(row);row_meta.append({'sourceRows':sorted(set(source_rows)),'notes':[]});last=len(rows)-1
        def merge(target,incoming):
            conflicts=[c for i,c in enumerate(incoming) if c['text'] and target[i]['text'] and not (columns[i]['role']=='referenceRange' and schema['allowMultilineReferences'])]
            if conflicts:
                issue('conflicting-continuation',[k for c in conflicts for k in c['sourceCells']],'Dos contenidos compiten por la misma columna; no se fusionan.')
                return False
            for i,c in enumerate(incoming):
                if not c['text']:continue
                if target[i]['text']:
                    if columns[i]['role']=='referenceRange' and schema['allowMultilineReferences']:
                        add(target[i],c)
                        correction('multiline-reference',c['sourceCells'],'Referencia continuada en otra fila OCR.')
                    else:
                        issue('conflicting-continuation',c['sourceCells'],'Dos contenidos compiten por la misma columna; se conserva la fila sin fusionarla.')
                        return False
                else:add(target[i],c)
            return True
        if not columns:
            # Keep every cell visible when the geometry cannot be resolved.
            for rr in sorted(physical):
                row=[content([fragment(c['id'])]) for c in physical[rr] if c['id'] not in headers]
                if any(c['text'] for c in row):rows.append(row);row_meta.append({'sourceRows':[rr],'notes':[]})
            columns=[{'role':'note','group':'','label':'Columna OCR '+str(i+1),'sourceHeader':'','headerCells':[]} for i in range(max(map(len,rows),default=0))]
            for row in rows:row.extend(blank() for _ in range(len(columns)-len(row)))
        else:
            test_index=next((i for i,c in enumerate(columns) if c['role']=='test'),None)
            value_indexes=[i for i,c in enumerate(columns) if c['role']=='value']
            for rr in range(1,max((r for r,_ in occupied),default=0)+1):
                original_cells=physical[rr];active=[c for c in original_cells if c['id'] not in headers and c['text'].strip()]
                if not active:
                    if original_cells and not any(c['id'] in headers for c in original_cells):correction('empty-row',[c['id'] for c in original_cells],'Fila OCR vacía excluida; no contiene datos.')
                    continue
                if test_index is None:
                    emit([content([fragment(c['id']) for c in active])],[rr]);continue
                out=[blank() for _ in columns]
                name_only_folded=folded and len(active)==1 and active[0]['columnStart']==0 and not numeric.fullmatch(active[0]['text'].strip())
                if name_only_folded and pending is not None and re.match(r'^(?:negativo|positivo|no reactivo|reactivo|ausente|presente)$',active[0]['text'].strip(),re.I):name_only_folded=False
                if name_only_folded:out[test_index]=content([fragment(active[0]['id'])])
                else:
                    for c in active:
                        key=c['id'];targets=sorted(set(i for pos in range(c['columnStart'],c['columnEnd']) for i in axis.get(pos,[])))
                        # Regular rowspans can carry a test name to a later measure row; never duplicate a value.
                        if len(targets)==1:
                            i=targets[0]
                            if out[i]['text'] and columns[i]['role']!='unit':issue('column-collision',[key],'Varias celdas ocupan la misma columna lógica.')
                            add(out[i],content([fragment(key)]),'' if columns[i]['role']=='unit' else '\n')
                            if len([pos for pos in range(c['columnStart'],c['columnEnd']) if pos in axis])>1:correction('spanned-column',[key],'Varias posiciones físicas corresponden a una única columna lógica.')
                        elif len(targets)==2 and [columns[i]['role'] for i in targets]==['value','unit']:
                            match=value_rx.fullmatch(c['text'])
                            if match and schema['allowCombinedValueUnit']:
                                for i,group in zip(targets,('value','unit')):out[i]=content([fragment(key,*match.span(group))])
                                correction('split-value-unit',[key],'Resultado y unidad separados por sus límites de caracteres originales.')
                            else:
                                out[targets[0]]=content([fragment(key)])
                                issue('ambiguous-combined-cell',[key],'La celda combinada no permite separar de forma inequívoca el resultado y la unidad.')
                        else:
                            if targets:out[targets[0]]=content([fragment(key)])
                            issue('ambiguous-span',[key],'La expansión de esta celda cruza columnas incompatibles.')
                # Combined value/unit with a separate but empty unit placeholder.
                for i in value_indexes:
                    unit=next((j for j,c in enumerate(columns) if c['role']=='unit' and c['group']==columns[i]['group']),None)
                    cell=out[i]
                    if (unit is None or not out[unit]['text']) and len(cell['sourceParts'])==1:
                        part=cell['sourceParts'][0];raw=cells[part['cell']]['text'][part['start']:part['end']]
                        match=value_rx.fullmatch(raw)
                        if match and schema['allowCombinedValueUnit']:
                            out[i]=content([fragment(part['cell'],part['start']+match.start('value'),part['start']+match.end('value'))])
                            unit_content=content([fragment(part['cell'],part['start']+match.start('unit'),part['start']+match.end('unit'))])
                            if unit is None:out[i]['unit']=unit_content
                            else:out[unit]=unit_content
                            correction('split-value-unit',cell['sourceCells'],'Unidad separada del resultado; se conserva su fragmento OCR original.')
                # Reuse only explicit rowspans for a test name, never infer a missing name.
                if not out[test_index]['text'] and not folded:
                    carried={occupied.get((rr,pos)) for pos,targets in axis.items() if test_index in targets}
                    carried={key for key in carried if key and cells[key]['row']<rr and cells[key]['text'].strip()}
                    if len(carried)==1:
                        key=next(iter(carried));out[test_index]=content([fragment(key)])
                        correction('explicit-rowspan',[key],'Nombre repetido únicamente por un rowspan explícito del OCR.')
                name=out[test_index]['text'];has_value=any(out[i]['text'] for i in value_indexes)
                has_other=any(c['text'] for i,c in enumerate(out) if i!=test_index)
                if name and note_rx.search(name):
                    note=out[test_index];out[test_index]=blank()
                    if pending is not None:pending[2].append(note)
                    elif last is not None:row_meta[last]['notes'].append(note)
                    else:notes.append(note)
                    correction('explanatory-note',note['sourceCells'],'Texto explicativo conservado como nota, separado de la prueba.')
                    name=''
                    if not has_other:continue
                if name and not has_other:
                    if pending is not None:
                        issue('name-without-value',ids_of(pending[0]),'Nombre sin valores antes de otro nombre: asociación pendiente de revisión.')
                        emit(pending[0],pending[1]);row_meta[-1]['notes']+=pending[2]
                    pending=(out,[rr],[])
                    continue
                if pending is not None:
                    if not name and has_value and schema['allowSplitRows']:
                        if merge(pending[0],out):
                            emit(pending[0],pending[1]+[rr]);row_meta[-1]['notes']+=pending[2]
                            correction('merge-split-row',ids_of(pending[0]),'Nombre y medidas de filas OCR consecutivas unidos.')
                            pending=None;continue
                    if has_value:
                        issue('ambiguous-name-association',ids_of(pending[0])+ids_of(out),'No se puede asociar un nombre pendiente a esta fila sin asumir datos.')
                        emit(pending[0],pending[1]);row_meta[-1]['notes']+=pending[2];pending=None
                if not name and not has_value and last is not None and has_other:
                    if merge(rows[last],out):
                        row_meta[last]['sourceRows'].append(rr);continue
                if not name and has_value:
                    # Only fill a previous row if the destinations were empty; never choose between two values.
                    if last is not None and all(not rows[last][i]['text'] for i in value_indexes) and schema['allowSplitRows'] and merge(rows[last],out):
                        row_meta[last]['sourceRows'].append(rr);correction('merge-continuation',ids_of(out),'Datos de continuación unidos a columnas previamente vacías.');continue
                    issue('value-without-name',ids_of(out),'Fila de resultados sin un nombre asociable de forma inequívoca.')
                emit(out,[rr])
            if pending is not None:
                issue('name-without-value',ids_of(pending[0]),'Nombre final sin resultado: se conserva para revisión.')
                emit(pending[0],pending[1]);row_meta[-1]['notes']+=pending[2]
        # Derive coverage from the FINAL output, not intermediate allocations.
        used=defaultdict(list)
        final_cells=[c for row in rows for c in row]+notes+[n for meta in row_meta for n in meta['notes']]
        final_cells += [c['unit'] for c in final_cells if c.get('unit')]
        for cell in final_cells:
            for part in cell['sourceParts']:used[part['cell']].append((part['start'],part['end']))
        # Provenance coverage: every non-whitespace source character must be accounted for.
        for key,c in cells.items():
            if key in headers:continue
            covered=set(i for start,end in used[key] for i in range(start,end))
            if any(not char.isspace() and i not in covered for i,char in enumerate(c['text'])):
                issue('unassigned-source',[key],'Hay texto OCR que no ha podido asignarse; se conserva en el original.')
        for ri,row in enumerate(rows):
            for ci,cell in enumerate(row):
                if ci>=len(columns):continue
                if cell['text'] and columns[ci].get('valueType')=='numeric' and not numeric.fullmatch(cell['text']):
                    issue('value-type-mismatch',cell['sourceCells'],'Se esperaba un valor numérico y el OCR devuelve «'+cell['text']+'». Se conserva sin sustituir caracteres.')
                elif columns[ci]['role']=='value' and cell['text'] and columns[ci].get('valueType')=='auto' and not numeric.fullmatch(cell['text']):
                    qualitative=re.fullmatch(r'(?i)(?:negativ[oa]|positiv[oa]|reactivo|no reactivo|ausente|presente|no detectado|normal)',cell['text'].strip())
                    if not qualitative:issue('uncertain-value',cell['sourceCells'],'Valor sin un tipo verificable; configure la columna como numérica o texto. Se conserva el literal OCR.')
                if columns[ci]['role']=='unit' and cell['text'] in ('"',"'"):
                    issue('uncertain-unit',cell['sourceCells'],'Unidad OCR dudosa; se conserva el literal.')
            if selected:
                for ci,declared in enumerate(selected['schema']['columns']):
                    if declared['required'] and not row[ci]['text']:issue('required-value',ids_of(row),'Falta contenido obligatorio en la columna '+declared['label']+'.')
            related=[x for x in issues if set(x['sourceCells']) & set(ids_of(row))]
            row_meta[ri]['issues']=related
        coherent='<table><thead><tr>'+''.join('<th>'+html.escape(c['label'])+'</th>' for c in columns)+'</tr></thead><tbody>'+''.join('<tr>'+''.join('<td>'+html.escape(c['text']+(' '+c['unit']['text'] if c.get('unit') else '')).replace('\n','<br>')+'</td>' for c in row)+'</tr>' for row in rows)+'</tbody></table>'
        return {'engine':'deterministic-v1','status':'review' if issues else 'accepted','sourceHtml':source['html'],'sourceCells':cells,'columns':columns,'rows':rows,'rowDetails':row_meta,
                'notes':notes,'corrections':corrections,'issues':issues,'coherentHtml':coherent,'expectedStructure':{'tableType':selected} if selected else None,
                'layout':{'width':width,'columns':column_defs,'axis':axis,'tableType':{'code':selected['code'],'version':selected['version']} if selected else None} if columns and not folded and not all(c['role']=='note' for c in columns) and axis else None,
                'validation':{'allNonemptyCellsAccountedFor':not any(x['code']=='unassigned-source' for x in issues),'literalSourceFragments':True,'clinicalValidation':False}}
    return runtime.stage_envelope(run)
}
}


