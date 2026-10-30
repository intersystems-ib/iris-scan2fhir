/// Normalize a physical OCR HTML table into one logical record, with literal cell provenance.
Class App.Interop.LabelValueTables Extends %RegisteredObject
{
ClassMethod Normalize(inputJSON As %String) As %String [ Language = python ]
{
    import json,re,html,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        source=json.loads(inputJSON);definition=source['definition'];binding=source['tableType']
        template=next(t for t in definition['tableTypeDefinitions'] if t['code']==binding['code'] and t['version']==binding['version'])
        config=template['schema'];fields=config['labelFields']
        packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':source['html'],'mode':'deterministic'})))
        if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
        cells=packet['result']['sourceCells'];occupied={};positions={};used=set();issues=[];row=[];matched=0
        for key,c in cells.items():
            col=positions.get(c['row'],0)
            while (c['row'],col) in occupied:col+=1
            c['columnStart']=col;c['columnEnd']=col+c['colspan'];positions[c['row']]=c['columnEnd']
            for rr in range(c['row'],c['row']+c['rowspan']):
                for cc in range(col,c['columnEnd']):occupied[rr,cc]=key
        patterns={f['key']:re.compile(r'(?<!\w)(?:'+'|'.join(re.escape(a.strip()) for a in sorted(f['aliases'],key=len,reverse=True))+r')\s*(?:[:：]\s*|(?=\s*$))',re.I) for f in fields}
        labels={key:sorted((m.start(),m.end(),name) for name,p in patterns.items() for m in p.finditer(c['text']) if not c['text'][:m.start()].strip() or ':' in m.group() or '：' in m.group()) for key,c in cells.items()}
        def is_label(c):return bool(labels[c['id']])
        for field in fields:
            candidates=[];label_ids=[]
            for key,c in cells.items():
                found=[(i,label) for i,label in enumerate(labels[key]) if label[2]==field['key']]
                for index,label in found:
                    label_ids.append(key);used.add(key);matched+=1
                    start=label[1];end=labels[key][index+1][0] if index+1<len(labels[key]) else len(c['text']);value=c['text'][start:end].strip();value_cell=c
                    if not value:
                        neighbor=next((v for v in cells.values() if v['row']==c['row'] and v['columnStart']==c['columnEnd'] and not is_label(v)),None)
                        if neighbor is None:
                            below=occupied.get((c['row']+c['rowspan'],c['columnStart']))
                            neighbor=cells.get(below)
                            if neighbor and is_label(neighbor):neighbor=None
                        if neighbor:
                            value_cell=neighbor;start=0;end=len(neighbor['text']);value=neighbor['text'].strip()
                    while start<end and value_cell['text'][start].isspace():start+=1
                    while end>start and value_cell['text'][end-1].isspace():end-=1
                    if value:
                        used.add(value_cell['id']);candidates.append({'text':value_cell['text'][start:end],'sourceCells':list(dict.fromkeys([key,value_cell['id']])),'sourceParts':[{'cell':value_cell['id'],'start':start,'end':end}]})
                        if re.search(r'[A-Za-zÀ-ÿ][A-Za-zÀ-ÿ ]{1,40}[:：]',value):issues.append({'code':'ambiguous-label-value','sourceCells':[value_cell['id']],'message':'El valor puede contener otra etiqueta OCR sin definir.'})
            values={v['text'] for v in candidates};out=candidates[0] if candidates else {'text':'','sourceCells':label_ids,'sourceParts':[]}
            if len(values)>1:issues.append({'code':'conflicting-label-value','sourceCells':list(dict.fromkeys(k for v in candidates for k in v['sourceCells'])),'message':'La etiqueta '+field['label']+' tiene valores diferentes.'})
            if field['required'] and not values:issues.append({'code':'required-value','sourceCells':label_ids,'message':'Falta el campo obligatorio '+field['label']+'.'})
            if values and field['valueType']=='numeric' and not re.fullmatch(r'[<>≤≥=]?\s*[+-]?\d+(?:[.,]\d+)?(?:[eE][+-]?\d+)?',out['text']):issues.append({'code':'value-type-mismatch','sourceCells':out['sourceCells'],'message':'Se esperaba un número en '+field['label']+'.'})
            row.append(out)
        notes=[{'text':c['text'],'sourceCells':[key]} for key,c in cells.items() if key not in used and c['text'].strip()]
        columns=[{'key':f['key'],'label':f['label'],'role':'note','group':f['group'],'valueType':f['valueType'],'headerCells':[],'sourceHeader':''} for f in fields]
        coherent='<table><thead><tr>'+''.join('<th>'+html.escape(f['label'])+'</th>' for f in fields)+'</tr></thead><tbody><tr>'+''.join('<td>'+html.escape(c['text'])+'</td>' for c in row)+'</tr></tbody></table>'
        return {'engine':'deterministic-v1','kind':'label-value','matchedFields':matched,'status':'review' if issues else 'accepted','sourceHtml':source['html'],'sourceCells':cells,'columns':columns,'rows':[row],'notes':notes,'corrections':[],'issues':issues,'coherentHtml':coherent,'expectedStructure':{'tableType':template},'layout':None,'rowDetails':[{'sourceRows':sorted({c['row'] for c in cells.values()}),'notes':notes,'issues':issues}],'validation':{'allNonemptyCellsAccountedFor':True}}
    return runtime.stage_envelope(run)
}
}
