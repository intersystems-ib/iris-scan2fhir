/// Derive reviewable label/value records from OCR geometry; never learn patient values in schemas.
Class App.Interop.InformationTables Extends %RegisteredObject
{
ClassMethod Fields(html As %String) As %String [ Language = python ]
{
    import json,re,hashlib,unicodedata,iris
    packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':html,'mode':'deterministic'})))
    if packet['httpStatus']!=200:return '[]'
    cells=packet['result']['sourceCells']
    aliases=json.loads(iris.cls('App.Interop.TableStructure').HeaderAliases())
    def norm(v):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c)).split()).strip(' :.');
    roles={r for c in cells.values() if c['row']<=3 for r,terms in aliases.items() if norm(c['text']) in {norm(t) for t in terms}}
    if 'value' in roles and ('name' in roles or 'unit' in roles):return '[]'
    labels=json.loads(iris.cls('App.Interop.DocumentDiscovery').Labels(json.dumps(cells)))
    seen={norm(label) for label in labels}
    for c in cells.values():
        first=re.match(r'^\s*[^\d:：\n]{1,120}[:：]',c['text'])
        for m in re.finditer(r'(?<![\w:])([^\W\d_][\w.-]{0,40})\s*[:：]',c['text']):
            if first and m.start()<first.end():continue
            if norm(m[1]) not in seen:labels.append(m[1]);seen.add(norm(m[1]))
    return json.dumps([{'key':'field-'+hashlib.sha256(norm(label).encode()).hexdigest()[:12],
        'label':label,'aliases':[label],'group':'document','required':False,'valueType':'text'} for label in labels[:64]],ensure_ascii=False)
}

ClassMethod Enrich(pagesJSON As %String) As %String [ Language = python ]
{
    import json,re,html,statistics,iris
    pages=json.loads(pagesJSON)
    if not pages:return json.dumps({'pages':pages})
    page=pages[0];content=page.get('content') or page
    if content.get('derivedTables'):return json.dumps({'pages':pages},ensure_ascii=False)
    layout=content.get('layout') or {};lines=layout.get('lines') or [];blocks=layout.get('blocks') or []
    def box(v):
        b=v.get('bbox',[])
        return b if len(b)==4 and b[2]>b[0] and b[3]>b[1] else None
    limit=min((box(b)[1] for b in blocks if b.get('label')=='Table' and box(b)),default=float('inf'))
    # Physical header tables already retain their cells. Only derive text before the first HTML table.
    md=content.get('markdown','');prefix=re.split(r'<table\b',md,maxsplit=1,flags=re.I)[0]
    if '<table' in md and limit==float('inf'):return json.dumps({'pages':pages},ensure_ascii=False)
    selected=[dict(line) for line in lines if box(line) and box(line)[3]<=limit and line.get('text','').strip()]
    if not selected:return json.dumps({'pages':pages},ensure_ascii=False)
    known={a for p in json.loads(iris.cls('App.Catalog.HeaderPresets').JSON()) for f in p['configuration']['fields'] for a in f['aliases']}
    pattern=re.compile(r'(?<!\w)(?:'+'|'.join(re.escape(a) for a in sorted(known,key=len,reverse=True))+r')\s*[:：]',re.I)
    anchors=[];label_lines=set()
    for li,line in enumerate(selected):
        text=line['text'];matches=list(pattern.finditer(text))
        matches.extend(m for m in re.finditer(r'(?<![\w:])([^\W\d_][\w.-]{0,40})\s*[:：]',text)
            if not any(known.start()<=m.start()<known.end() for known in matches))
        matches.sort(key=lambda m:m.start())
        first=re.match(r'^\s*([^\d:：\n]{1,100})[:：]',text)
        if first:matches=[first,*[m for m in matches if m.start()>=first.end()]]
        if not matches:continue
        label_lines.add(li)
        for i,m in enumerate(matches):
            start=m.end();end=matches[i+1].start() if i+1<len(matches) else len(text)
            while start<end and text[start].isspace():start+=1
            while end>start and text[end-1].isspace():end-=1
            label=text[m.start():m.end()].strip().rstrip(':：').strip()
            anchors.append({'label':label,'value':text[start:end],'line':li,'box':box(line),
                'parts':[{'line':line['id'],'start':start,'end':end}] if start<end else [],'lastInLine':i==len(matches)-1})
    if len(anchors)<2:return json.dumps({'pages':pages},ensure_ascii=False)
    height=statistics.median(a['box'][3]-a['box'][1] for a in anchors)
    starts=[]
    for x in sorted(a['box'][0] for a in anchors):
        if not starts or x-starts[-1]>height*3:starts.append(x)
    consumed=set(label_lines)
    for anchor in anchors:
        if not anchor['lastInLine']:continue
        b=anchor['box'];right=min((x for x in starts if x>b[0]+height*3),default=float('inf'))
        nearby=[(i,l) for i,l in enumerate(selected) if i not in label_lines and i not in consumed and
            box(l)[0]>=b[2]-height*.3 and box(l)[0]<right and
            abs((box(l)[1]+box(l)[3]-b[1]-b[3])/2)<height*.65]
        nearby.sort(key=lambda pair:box(pair[1])[0])
        if nearby and not anchor['value']:
            anchor['value']=' '.join([anchor['value'],*(l['text'] for _,l in nearby)]).strip()
            anchor['parts'].extend({'line':l['id'],'start':0,'end':len(l['text'])} for _,l in nearby)
            consumed.update(i for i,_ in nearby)
            # Continue a value only in its own column, stopping before the next label there.
            if not anchor['parts'][0]['line']==selected[anchor['line']]['id']:
                left=box(nearby[0][1])[0];bottom=max(box(l)[3] for _,l in nearby)
                stop=min((other['box'][1] for other in anchors if abs(other['box'][0]-b[0])<height*3 and other['box'][1]>b[3]),default=limit)
                for i,l in sorted(enumerate(selected),key=lambda pair:box(pair[1])[1]):
                    lb=box(l)
                    if i not in consumed and lb[1]>=bottom-height*.2 and lb[3]<stop-height*.1 and lb[1]<bottom+height*1.5 and abs(lb[0]-left)<height:
                        anchor['value']+=' '+l['text'];anchor['parts'].append({'line':l['id'],'start':0,'end':len(l['text'])});consumed.add(i);bottom=lb[3]
        elif re.fullmatch(r'\d{1,4}[-/](?:\d{1,2}|[A-Za-z]{3})[-/]\d{1,4}',anchor['value']):
            clocks=[(i,l) for i,l in enumerate(selected) if i not in consumed and
                b[2]-height*.3<=box(l)[0]<=b[2]+height*3 and
                abs((box(l)[1]+box(l)[3]-b[1]-b[3])/2)<height*.65 and
                re.fullmatch(r'\d{1,2}:\d{2}(?::\d{2}(?:[.,]\d+)?)?',l['text'].strip())]
            if len(clocks)==1:
                i,l=clocks[0];anchor['value']+=' '+l['text'];anchor['parts'].append({'line':l['id'],'start':0,'end':len(l['text'])});consumed.add(i)
    rows=[];provenance=[]
    for a in sorted(anchors,key=lambda a:(a['box'][1],a['box'][0])):
        rows.append('<tr><td>'+html.escape(a['label'])+':</td><td>'+html.escape(a['value'])+'</td></tr>')
        provenance.append({'row':len(rows),'labelLine':selected[a['line']]['id'],'valueParts':a['parts']})
    top=min(a['box'][1] for a in anchors);bottom=max(a['box'][3] for a in anchors)
    for i,l in enumerate(selected):
        if i not in consumed and top<=box(l)[1]<bottom and box(l)[0]>=starts[0]-height:
            rows.append('<tr><td></td><td>'+html.escape(l['text'])+'</td></tr>')
            provenance.append({'row':len(rows),'labelLine':None,'valueParts':[{'line':l['id'],'start':0,'end':len(l['text'])}]})
    table='<table data-source="ocr-header-lines">'+''.join(rows)+'</table>'
    number=len(re.findall(r'<table\b',md,re.I))+1
    content['markdown']=md+'\n\n'+table
    content['derivedTables']=[{'id':'t'+str(number),'source':'ocr-header-lines','page':page['page'],'cells':provenance}]
    # The original page text, Markdown and geometry remain untouched in page.content's parent.
    return json.dumps({'pages':pages},ensure_ascii=False)
}

ClassMethod Preview(inputJSON As %String) As %String [ Language = python ]
{
    import json,copy,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        data=json.loads(inputJSON);raw=data.get('html','')
        if not isinstance(raw,str) or not raw.strip():raise runtime.ProcessingError('Seleccione una tabla OCR o pegue su HTML.')
        schema=copy.deepcopy(data.get('schema'))
        if not schema:
            fields=json.loads(iris.cls('App.Interop.InformationTables').Fields(raw))
            if not fields:raise runtime.ProcessingError('No se han identificado etiquetas. Defina los campos manualmente.')
            schema={'kind':'label-value','pageScope':'first','labelFields':fields,'stopLabels':[],
                'columns':[],'producesResults':False,'allowSplitRows':False,'allowMissingHeaders':True,
                'allowCombinedValueUnit':False,'allowMultilineReferences':False}
        schema.pop('fhir',None);schema.pop('rowMapping',None);schema.pop('informationMapping',None)
        if schema.get('kind')!='label-value':raise runtime.ProcessingError('Seleccione una tabla de etiquetas y valores.')
        checked=json.loads(iris.cls('App.Interop.CatalogValidation').Validate('table-type',json.dumps({'code':'information-preview',
            'name':'Información del documento','baseVersion':0,'schema':schema})))
        if checked['httpStatus']!=200:raise runtime.ProcessingError(checked['error'])
        schema=checked['result']['schema'];template={'code':'information-preview','version':1,'name':'Información del documento','schema':schema}
        packet=json.loads(iris.cls('App.Interop.LabelValueTables').Normalize(json.dumps({'html':raw,
            'definition':{'tableTypeDefinitions':[template]},'tableType':{'code':template['code'],'version':1}})))
        if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
        return {'schema':schema,'extraction':packet['result']}
    return runtime.stage_envelope(run)
}
}
