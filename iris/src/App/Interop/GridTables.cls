/// Shared structural reader: header bands, literal fragments, empty columns and auditable exclusions.
Class App.Interop.GridTables Extends %RegisteredObject
{
ClassMethod Normalize(inputJSON As %String) As %String [ Language = python ]
{
    import json,re,html,unicodedata,iris,copy
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        source=json.loads(inputJSON);template=source.get('template');prior=source.get('previousLayout') or {}
        if prior.get('continuationLayout'):prior=prior['continuationLayout']
        packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':source['html'],'mode':'deterministic'})))
        if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
        cells=packet['result']['sourceCells'];occupied={};physical={}
        def norm(v):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c)).split()).strip(' :.');
        for key,c in cells.items():
            col=max((p['columnEnd'] for p in physical.get(c['row'],[])),default=0)
            while (c['row'],col) in occupied:col+=1
            c['columnStart']=col;c['columnEnd']=col+c['colspan'];physical.setdefault(c['row'],[]).append(c)
            for rr in range(c['row'],c['row']+c['rowspan']):
                for cc in range(col,c['columnEnd']):occupied[rr,cc]=key
        width=max(c['columnEnd'] for c in cells.values());numeric=re.compile(r'^\s*\(?\s*[<>≤≥=*+\-]*\s*\d')
        aliases=json.loads(iris.cls('App.Interop.TableStructure').HeaderAliases())
        for role,values in source.get('headerAliases',{}).items():aliases[role]=list(dict.fromkeys(aliases.get(role,[])+values))
        aliases['name']+=['fórmula leucocitaria']
        aliases['value']+=['v. absoluto','v. absoluta','valor absoluto','valor relativo']
        terms=sorted([(norm(v),role) for role,values in aliases.items() for v in values],key=lambda item:-len(item[0]))
        def fields(c):
            value=norm(c['text'])
            if not value or numeric.search(value) or len(value)>160:return []
            found=[];covered=[]
            for term,role in terms:
                for match in re.finditer(r'(?<!\w)'+re.escape(term)+r'(?!\w)',value):
                    if any(match.start()<b and match.end()>a for a,b in covered):continue
                    found.append((match.start(),match.end(),role));covered.append((match.start(),match.end()))
            found.sort()
            if not found or found[0][0]>0:return []
            return found
        parsed={key:fields(c) for key,c in cells.items()}
        def measured(row):return any(numeric.search(c['text']) or norm(c['text']) in ('negativo','positivo','negative','positive','no reactivo','reactivo','ausente','presente','true','false') for c in row if c['text'].strip())
        def active(row):return [c for c in row if c['text'].strip()]
        notes=[];excluded=[];corrections=[];issues=[];header_cells=set();header_rows=set();header_items=[]
        def note(row,reason):
            ids=[]
            for c in row:
                if c['text'].strip():notes.append({'text':c['text'],'sourceCells':[c['id']],'sourceParts':[{'cell':c['id'],'start':0,'end':len(c['text'])}]});ids.append(c['id'])
            if ids:excluded.append({'sourceRows':sorted({c['row'] for c in row}),'sourceCells':ids,'reason':reason})
        # Read the leading header area, including partial headers, until actual data begins.
        prefix=[];strong=False;generic=None;administrative=set()
        for r,row in physical.items():
            if r>8:break
            hits=[c for c in row if parsed[c['id']]];roles={p[2] for c in hits for p in parsed[c['id']]}
            if measured(row):break
            if hits:
                prefix.append(r);header_rows.add(r);header_items.extend(hits);header_cells.update(c['id'] for c in hits)
                strong=strong or bool({'name','value'}<=roles or ('value' in roles and len(roles)>1))
                continue
            if strong:break
            nonempty=active(row)
            labels=json.loads(iris.cls('App.Interop.DocumentDiscovery').Labels(json.dumps({c['id']:c for c in nonempty})))
            if labels:administrative.add(r)
            if len(nonempty)>=2 and not labels and all(c['colspan']==1 and len(c['text'])<=160 and ':' not in c['text'] for c in nonempty):generic=r
            prefix.append(r)
        roles={p[2] for c in header_items for p in parsed[c['id']]};has_header=strong or {'name','value'}<=roles
        if not has_header and generic is not None:
            anchors=active(physical[generic]);probe_bands=[(c['columnStart'],anchors[i+1]['columnStart'] if i+1<len(anchors) else width) for i,c in enumerate(anchors)]
            sample=[active(row) for r,row in physical.items() if r>generic and measured(row)][:5]
            collisions=sum(any(sum(a<=c['columnStart']<b for c in row)>1 for a,b in probe_bands) for row in sample)
            if sample and collisions*2>=len(sample):generic=None
        prior_bands=prior.get('originalSpans',prior.get('spans',[]))
        prior_headers=prior.get('originalHeaders',prior.get('headers',[]))
        prior_roles=prior.get('originalRoles') or [{'prueba':'name','resultado':'value','unidades':'unit','valores de referencia':'referenceRange'}.get(norm(h.split('·')[-1]),'note') for h in prior_headers]
        compatible=bool(prior.get('kind')=='grid' and not prior.get('headerless') and prior_bands and width>prior_bands[-1]['start'] and abs(width-prior['width'])<=2)
        # Notes containing colons are not patient fields when aligned measurement rows continue a clinical grid.
        continuation_data=False
        if compatible and 'name' in prior_roles and 'value' in prior_roles:
            name_band=prior_bands[prior_roles.index('name')];value_bands=[b for b,role in zip(prior_bands,prior_roles) if role=='value']
            continuation_data=any(
                any(name_band['start']<=c['columnStart']<name_band['end'] and c['text'].strip() and ':' not in c['text'] and not numeric.search(c['text']) for c in row) and
                any(any(b['start']<=c['columnStart']<b['end'] for b in value_bands) and measured([c]) for c in row)
                for row in physical.values())
        if not has_header and continuation_data:generic=None
        inherited=False;headerless=False;folded=False;bands=[];headers=[];band_cells=[];semantic=[]
        if has_header:
            entries=[]
            for c in header_items:
                hits=parsed[c['id']];distinct=list(dict.fromkeys(p[2] for p in hits))
                if len(distinct)>1 and c['colspan']>=len(distinct):
                    step=c['colspan']/len(distinct)
                    if step!=int(step):continue
                    prefix_text=c['text'][:hits[1][0]].strip() if hits[0][2]=='value' and hits[1][2]=='referenceRange' else ''
                    for i,role in enumerate(distinct):
                        label={'name':'Prueba','value':'Resultado','unit':'Unidades','referenceRange':'Valores de referencia'}[role]
                        if prefix_text:label=prefix_text+' · '+label
                        entries.append({'start':c['columnStart']+i*int(step),'end':c['columnStart']+(i+1)*int(step),'label':label,'role':role,'cell':c})
                else:
                    label={'name':'Prueba','value':'Resultado','unit':'Unidades','referenceRange':'Valores de referencia'}[distinct[0]]
                    entries.append({'start':c['columnStart'],'end':c['columnEnd'],'label':label,'role':distinct[0],'cell':c})
            folded=any(a['role']=='name' and b['role']=='value' and a['start']==b['start'] and a['cell']['row']!=b['cell']['row'] for a in entries for b in entries)
            if folded:
                unique=[]
                for role in ('name','value','unit','referenceRange'):
                    match=next((e for e in entries if e['role']==role),None)
                    if match:unique.append(match)
                entries=unique;bands=[{'start':i,'end':i+1} for i in range(len(entries))];logical_width=len(entries)
            else:
                # Duplicate labels in consecutive header lines describe one physical band.
                entries=list({(e['start'],e['role']):e for e in entries}.values());entries.sort(key=lambda e:e['start'])
                for i,e in enumerate(entries):
                    end=entries[i+1]['start'] if i+1<len(entries) else width
                    if end<=e['start']:raise runtime.ProcessingError('Las cabeceras contienen campos superpuestos; revise su estructura OCR.')
                    bands.append({'start':e['start'],'end':end})
                logical_width=width
            for i,e in enumerate(entries):
                label=e['label']
                parents=[c for r,row in physical.items() if r<e['cell']['row'] and all(p['tag']=='th' and ':' not in p['text'] and '：' not in p['text'] for p in row) for c in row if c['colspan']>1 and not parsed[c['id']] and c['columnStart']<=e['start'] and c['columnEnd']>=e['end'] and c['colspan']<width and c['text'].strip()]
                if parents:label=' · '.join([' '.join(c['text'].split()) for c in parents]+[label])
                headers.append(label);semantic.append(e['role']);band_cells.append([e['cell']['id']])
            if not folded and bands[0]['start']>0:
                headers.insert(0,'Columna OCR 1');semantic.insert(0,'note');band_cells.insert(0,[]);bands.insert(0,{'start':0,'end':bands[0]['start']})
        elif generic is not None:
            anchors=active(physical[generic]);headers=[' '.join(c['text'].split()) for c in anchors]
            bands=[{'start':c['columnStart'],'end':anchors[i+1]['columnStart'] if i+1<len(anchors) else width} for i,c in enumerate(anchors)]
            semantic=['note']*len(bands);band_cells=[[c['id']] for c in anchors];header_cells.update(c['id'] for c in anchors);header_rows.add(generic);has_header=True;logical_width=width
        elif compatible:
            bands=copy.deepcopy(prior_bands);bands[-1]['end']=width;headers=list(prior_headers);semantic=list(prior_roles);band_cells=[[] for b in bands];inherited=True;logical_width=width
            corrections.append({'rule':'inherit-previous-header','sourceCells':[],'message':'Sin cabecera propia válida: se heredan las cabeceras de la tabla anterior compatible.'})
        elif template and not template['schema']['grid']['headerless'] and template['schema']['grid']['width']==width:
            structure=template['schema']['grid'];bands=copy.deepcopy(structure['spans']);headers=list(structure['headers']);semantic=['note']*len(bands);band_cells=[[] for b in bands];inherited=True;logical_width=width
            issues.append({'code':'unverified-continuation','sourceCells':[],'message':'Falta una cabecera o una tabla anterior compatible para confirmar estas columnas.'})
        else:
            bands=[{'start':i,'end':i+1} for i in range(width)];headers=['Columna OCR '+str(i+1) for i in range(width)];semantic=['note']*len(bands);band_cells=[[] for b in bands];headerless=True;logical_width=width
        if len(bands)>64:raise runtime.ProcessingError('La cuadrícula supera el límite de 64 columnas.')
        columns=[{'key':'column-'+str(i+1),'label':label,'role':'note','group':'','required':False,'valueType':'text','sourceHeader':'\n'.join(cells[k]['text'] for k in band_cells[i]) or label,'headerCells':band_cells[i]} for i,label in enumerate(headers)]
        def blank():return {'text':'','sourceCells':[],'sourceParts':[]}
        def fragment(parts):return {'text':' '.join(c['text'] for c in parts),'sourceCells':[c['id'] for c in parts],'sourceParts':[{'cell':c['id'],'start':0,'end':len(c['text'])} for c in parts]}
        rows=[];details=[];pending=None;name_index=next((i for i,role in enumerate(semantic) if role=='name'),0 if not headerless and len(columns)>1 else None)
        def emit(row,ranges):rows.append(row);details.append({'sourceRows':ranges,'notes':[],'issues':[]})
        def pending_note():
            nonlocal pending
            if pending:note(pending['cells'],'unaligned-heading-or-name');pending=None
        first_data=next((r for r,row in physical.items() if measured(row) and r not in header_rows),None)
        cutoff=max(header_rows,default=0)
        reference_indices={i for i,role in enumerate(semantic) if role=='referenceRange'}
        def explanatory(text):return bool(re.search(r'^(?:estimaci[oó]n|nota\b|observaci[oó]n|c[aá]lculo|\()|refer[ea]ncia seg[uú]n',text,re.I))
        for r,row in physical.items():
            nonempty=active(row)
            if not nonempty:continue
            if headerless and width==1 and first_data is None:
                note(row,'heading-without-aligned-data');continue
            if headerless and r in prefix and r not in administrative:
                note(row,'unrecognized-leading-heading');continue
            hits=[c for c in nonempty if parsed[c['id']]]
            if r<=cutoff and (has_header or r in header_rows):
                unknown=[c for c in nonempty if c['id'] not in header_cells]
                # A name may share the last header row with headings for the other columns.
                candidate=[c for c in unknown if name_index is not None and c['columnStart']==bands[name_index]['start'] and c['colspan']==1 and len(c['text'])<=160 and ':' not in c['text']]
                if r==cutoff and hits and candidate and any(semantic[i]=='name' and any(cells[k]['row']<r for k in band_cells[i]) for i in range(len(bands))):
                    pending={'cells':candidate,'row':r};unknown=[c for c in unknown if c not in candidate]
                if unknown:note(unknown,'excluded-leading-heading')
                continue
            if len({p[2] for c in hits for p in parsed[c['id']]})>=2 and not measured(row):
                note(row,'repeated-or-unaligned-header');continue
            if first_data is not None and r<first_data and not measured(row) and not headerless:
                if name_index is not None and len(nonempty)==1 and nonempty[0]['columnStart']==bands[name_index]['start'] and nonempty[0]['colspan']==1:
                    pending_note();pending={'cells':nonempty,'row':r}
                else:note(row,'excluded-leading-heading')
                continue
            if len(nonempty)==1 and nonempty[0]['colspan']>1 and sum(nonempty[0]['columnStart']<b['end'] and nonempty[0]['columnEnd']>b['start'] for b in bands)>1:
                note(row,'spanning-heading-or-note');continue
            if not measured(row) and any(':' in c['text'] or '：' in c['text'] for c in nonempty) and any(c['colspan']>1 and sum(c['columnStart']<b['end'] and c['columnEnd']>b['start'] for b in bands)>1 for c in nonempty):
                note(row,'unaligned-heading-or-note');continue
            if folded:
                if len(nonempty)==1 and not measured(row) and nonempty[0]['columnStart']==0:
                    pending_note();pending={'cells':nonempty,'row':r};continue
                output=[blank()]+[fragment([c for c in row if c['columnStart']==i and c['text'].strip()]) for i in range(len(bands)-1)]
            else:
                output=[fragment([c for c in row if b['start']<=c['columnStart']<b['end'] and c['text'].strip()]) for b in bands]
                if name_index is not None and output[name_index]['text'] and not any(c['text'] for i,c in enumerate(output) if i!=name_index):
                    pending_note();pending={'cells':nonempty,'row':r};continue
            if pending and name_index is not None and output[name_index]['text'] and explanatory(output[name_index]['text']):
                note([cells[k] for k in output[name_index]['sourceCells']],'explanatory-name-fragment');output[name_index]=blank()
            populated={i for i,c in enumerate(output) if c['text'].strip()}
            name_text=output[name_index]['text'] if name_index is not None else ''
            if rows and populated and (not name_text or explanatory(name_text)) and (populated-({name_index} if name_text else set()))<=reference_indices:
                if name_text:note([cells[k] for k in output[name_index]['sourceCells']],'reference-explanation')
                for i in populated & reference_indices:
                    old=rows[-1][i];new=output[i];old['text']=old['text']+' '+new['text'] if old['text'] else new['text'];old['sourceCells']+=new['sourceCells'];old['sourceParts']+=new['sourceParts']
                details[-1]['sourceRows'].append(r);corrections.append({'rule':'join-reference-continuation','sourceCells':[k for i in populated & reference_indices for k in output[i]['sourceCells']],'message':'Referencia continuada incorporada a la fila anterior conservando sus fragmentos OCR.'});continue
            if not name_text and populated and all(semantic[i]=='unit' for i in populated):
                note(row,'unaligned-unit-heading');continue
            if pending and name_index is not None:
                if not output[name_index]['text'] and any(c['text'] for i,c in enumerate(output) if i!=name_index):
                    output[name_index]=fragment(pending['cells']);ranges=[pending['row'],r];pending=None
                    corrections.append({'rule':'join-split-row','sourceCells':output[name_index]['sourceCells'],'message':'Nombre y valores alineados en filas consecutivas reunidos sin modificar el OCR.'})
                else:pending_note();ranges=[r]
            else:ranges=[r]
            for i,c in enumerate(output):
                if len(c['sourceCells'])>1:corrections.append({'rule':'header-band-join','sourceCells':c['sourceCells'],'message':'Celdas contiguas agrupadas bajo la cabecera '+columns[i]['label']+'.'})
            emit(output,ranges)
        pending_note()
        # Repair a merged result/unit before empty columns are removed. Keep literal OCR offsets.
        value_unit=re.compile(r'^\s*(?P<value>[<>≤≥=]?\s*[+-]?(?:\d+(?:[.,]\d+)?|[.,]\d+)(?:[eE][+-]?\d+)?)\s+(?P<unit>(?:[^\W\d_]|[%°]|\d+(?:\^\d+)?/)[^\n]*?)\s*$',re.UNICODE)
        def sliced(cell,start,end):
            parts=[];position=0
            for p in cell['sourceParts']:
                length=p['end']-p['start'];a=max(start,position);b=min(end,position+length)
                if a<b:parts.append({'cell':p['cell'],'start':p['start']+a-position,'end':p['start']+b-position})
                position+=length+1
            return {'text':' '.join(cells[p['cell']]['text'][p['start']:p['end']] for p in parts),
                    'sourceCells':list(dict.fromkeys(p['cell'] for p in parts)),'sourceParts':parts}
        for i,role in enumerate(semantic):
            if role!='value':continue
            stop=next((j for j in range(i+1,len(semantic)) if semantic[j]=='value'),len(semantic))
            units=[j for j in range(i+1,stop) if semantic[j]=='unit']
            if len(units)!=1:continue
            unit=units[0]
            for row in rows:
                cell=row[i]
                if row[unit]['text'].strip():continue
                match=value_unit.fullmatch(cell['text'])
                if not match:continue
                row[i]=sliced(cell,*match.span('value'));row[unit]=sliced(cell,*match.span('unit'))
                corrections.append({'rule':'split-value-unit','sourceCells':cell['sourceCells'],
                    'message':'Unidad trasladada desde el resultado a su columna vacía, conservando los fragmentos OCR originales.'})
        # Drop only columns without any body content; retain their headings in the audit notes.
        original_headers=list(headers);original_bands=copy.deepcopy(bands)
        keep=[i for i in range(len(columns)) if any(row[i]['text'].strip() for row in rows)] if rows else list(range(len(columns)))
        removed=[i for i in range(len(columns)) if i not in keep]
        for i in removed:
            note([cells[k] for k in columns[i]['headerCells']],'empty-column-header')
            corrections.append({'rule':'remove-empty-column','sourceCells':columns[i]['headerCells'],'message':'Columna sin valores eliminada: '+columns[i]['label']+'.'})
        columns=[columns[i] for i in keep];bands=[bands[i] for i in keep];headers=[headers[i] for i in keep];rows=[[row[i] for i in keep] for row in rows]
        if template:
            expected=template['schema']['grid'];declared=template['schema']['columns']
            if [norm(v) for v in headers]!=[norm(v) for v in expected['headers']] or len(declared)!=len(columns):
                issues.append({'code':'grid-header-mismatch','sourceCells':[],'message':'Las cabeceras y columnas no coinciden con la estructura guardada.'})
            else:columns=[{**c,**declared[i]} for i,c in enumerate(columns)]
        for c in columns:c.pop('useForFHIR',None)
        for ri,row in enumerate(rows):
            for i,c in enumerate(row):
                if c['text'] and columns[i].get('valueType')=='numeric' and not re.fullmatch(r'[<>≤≥=]?\s*[+-]?\d+(?:[.,]\d+)?(?:[eE][+-]?\d+)?',c['text'].strip()):
                    problem={'code':'value-type-mismatch','sourceCells':c['sourceCells'],'message':'Se esperaba un valor numérico en '+columns[i]['label']+'. Se conserva el texto OCR.'};details[ri]['issues'].append(problem);issues.append(problem)
        accounted=set(header_cells)
        for row in rows:
            for c in row:accounted.update(c['sourceCells'])
        for n in notes:accounted.update(n['sourceCells'])
        missing=[k for k,c in cells.items() if c['text'].strip() and k not in accounted]
        if missing:issues.append({'code':'unmapped-source-cells','sourceCells':missing,'message':'Quedan celdas OCR sin alinear; revise la estructura.'})
        coherent='<table><thead><tr>'+''.join('<th>'+html.escape(c['label'])+'</th>' for c in columns)+'</tr></thead><tbody>'+''.join('<tr>'+''.join('<td>'+html.escape(c['text'])+'</td>' for c in row)+'</tr>' for row in rows)+'</tbody></table>'
        layout={'kind':'grid','headers':headers,'spans':bands,'width':logical_width,'headerless':headerless,'originalHeaders':original_headers,'originalSpans':original_bands,'originalRoles':semantic}
        if not rows and headerless and prior.get('kind')=='grid' and not prior.get('headerless'):layout['continuationLayout']=prior
        return {'engine':'header-grid-v2','kind':'grid','status':'review' if issues else 'accepted','sourceHtml':source['html'],'sourceCells':cells,'columns':columns,'rows':rows,'notes':notes,'excludedRows':excluded,'corrections':corrections,'issues':issues,'coherentHtml':coherent,'expectedStructure':{'tableType':template} if template else None,'layout':layout,'inheritedHeaders':inherited,'clinicalContinuation':inherited and continuation_data,'rowDetails':details,'validation':{'allNonemptyCellsAccountedFor':not missing}}
    return runtime.stage_envelope(run)
}
}
