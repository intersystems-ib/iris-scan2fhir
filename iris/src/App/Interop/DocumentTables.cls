Class App.Interop.DocumentTables Extends %RegisteredObject
{
/// Read-time compatibility: header fields become an owned label/value table, without rewriting history.
ClassMethod Upgrade(inputJSON As %String) As %String [ Language = python ]
{
    import json,copy
    data=json.loads(inputJSON);tables=data.get('tables',data.get('tableTypeDefinitions',[]))
    if not any(t['schema'].get('kind')=='label-value' for t in tables) and (data.get('headerExtraction') or {}).get('fields'):
        old=data['headerExtraction'];code='document-information';n=1
        while any(t['code']==code for t in tables):n+=1;code='document-information-'+str(n)
        schema={'kind':'label-value','pageScope':'first','labelFields':copy.deepcopy(old['fields']),'stopLabels':old.get('stopLabels',[]),'columns':[{'key':f['key'],'label':f['label'],'role':'note','group':f['group'],'required':f['required'],'valueType':f['valueType']} for f in old['fields']],'producesResults':False,'allowSplitRows':True,'allowMissingHeaders':True,'allowCombinedValueUnit':False,'allowMultilineReferences':False}
        tables=[*tables,{'code':code,'version':1,'name':'Información del documento','schema':schema}]
        data['tableTypes']=[*data['tableTypes'],{'code':code,'version':1}]
    data['tables']=tables;data['tableTypeDefinitions']=tables;data.setdefault('tableGroups',[])
    return json.dumps(data,ensure_ascii=False)
}
}
