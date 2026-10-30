/// Preserve unclassified HTML grids without assuming clinical column roles.
Class App.Interop.RawTables Extends %RegisteredObject
{
ClassMethod Normalize(inputJSON As %String) As %String [ Language = python ]
{
    import json,html,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        source=json.loads(inputJSON);template=source.get('template');packet=json.loads(iris.cls('App.Interop.TableMapping').Prepare(json.dumps({'html':source['html'],'mode':'deterministic'})))
        if packet['httpStatus']!=200:raise runtime.ProcessingError(packet['error'])
        cells=packet['result']['sourceCells'];occupied={};ends={}
        for key,c in cells.items():
            col=ends.get(c['row'],0)
            while (c['row'],col) in occupied:col+=1
            c['columnStart']=col;c['columnEnd']=col+c['colspan'];ends[c['row']]=c['columnEnd']
            for rr in range(c['row'],c['row']+c['rowspan']):
                for cc in range(col,c['columnEnd']):occupied[rr,cc]=key
        width=max((c['columnEnd'] for c in cells.values()),default=1)
        columns=[{'key':'column-'+str(i+1),'label':'Columna OCR '+str(i+1),'role':'note','group':'','required':False,'valueType':'text','headerCells':[],'sourceHeader':''} for i in range(width)]
        if template and len(template['schema']['columns'])==width:columns=[{**c,'headerCells':[],'sourceHeader':''} for c in template['schema']['columns']]
        rows=[]
        for r in sorted({c['row'] for c in cells.values()}):
            row=[]
            for col in range(width):
                key=occupied.get((r,col));c=cells.get(key)
                anchor=c and c['row']==r and c['columnStart']==col
                row.append({'text':c['text'] if anchor else '', 'sourceCells':[key] if key else [],'sourceParts':[{'cell':key,'start':0,'end':len(c['text'])}] if anchor else []})
            if any(c['text'].strip() for c in row):rows.append(row)
        confirmed=bool(template and template['schema'].get('kind')!='unclassified' and len(template['schema']['columns'])==width)
        issues=[] if confirmed else [{'code':'unclassified-table','sourceCells':[],'message':'Tabla detectada. Revise su estructura y confirme el tipo de tabla antes de generar recursos.'}]
        coherent='<table><tbody>'+''.join('<tr>'+''.join('<td>'+html.escape(c['text'])+'</td>' for c in row)+'</tr>' for row in rows)+'</tbody></table>'
        return {'engine':'deterministic-v1','kind':'positional' if confirmed else 'unclassified','status':'accepted' if confirmed else 'review','sourceHtml':source['html'],'sourceCells':cells,'columns':columns,'rows':rows,'notes':[],'corrections':[],'issues':issues,'coherentHtml':coherent,'expectedStructure':{'tableType':template} if template else None,'layout':None,'rowDetails':[{'sourceRows':[],'notes':[],'issues':issues} for row in rows],'validation':{'allNonemptyCellsAccountedFor':True}}
    return runtime.stage_envelope(run)
}
}
