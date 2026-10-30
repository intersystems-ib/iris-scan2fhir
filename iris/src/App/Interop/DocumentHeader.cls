/// Generic label/value extraction driven entirely by the selected document definition.
Class App.Interop.DocumentHeader Extends %RegisteredObject
{
ClassMethod Extract(pageJSON As %String, definitionJSON As %String = "{}") As %String [ Language = python ]
{
    import json,re,html,unicodedata
    page=json.loads(pageJSON);definition=json.loads(definitionJSON)
    configuration=definition.get('headerExtraction') or {'fields':[],'stopLabels':[]}
    label_tables=[t for t in definition.get('tableTypeDefinitions',[]) if t['schema'].get('kind')=='label-value']
    if label_tables:configuration={'fields':[f for t in label_tables for f in t['schema']['labelFields']],'stopLabels':[s for t in label_tables for s in t['schema'].get('stopLabels',[])]}
    definitions=configuration['fields'];content=page.get('content') or page
    markdown=content.get('markdown') or ''
    def norm(value):
        return ''.join(c for c in unicodedata.normalize('NFKD',value.casefold()) if not unicodedata.combining(c))
    def plain(value):
        value=re.sub(r'<br\s*/?>|</tr>|</p>|</div>|</h[1-6]>', '\n',value,flags=re.I)
        value=re.sub(r'</t[dh]>', '\t',value,flags=re.I)
        return html.unescape(re.sub(r'<[^>]*>','',value))
    def literal(value):
        # Aliases are literal text; no user-supplied regular expressions are executed.
        return r'\s*'.join(re.escape(part) for part in value.strip().split())
    aliases=definition.get('headerAliases') or {}
    roles={key:[norm(alias) for alias in values] for key,values in aliases.items()}
    for table_type in definition.get('tableTypeDefinitions',[]):
        for column in table_type['schema']['columns']:
            role='name' if column['role']=='test' else column['role']
            roles.setdefault(role,[]).append(norm(column['label']))
    def has_alias(text,values):
        return any(re.search(r'(?<!\w)'+literal(value)+r'(?!\w)',text) for value in values)
    boundary=len(markdown)
    for table in re.finditer(r'<table\b[^>]*>.*?</table>',markdown,re.I|re.S):
        table_text=norm(plain(table.group(0)))
        if has_alias(table_text,roles.get('name',[])) and (has_alias(table_text,roles.get('value',[])) or has_alias(table_text,roles.get('unit',[]))):
            boundary=table.start();break
    original=markdown[:boundary];text=plain(original) if markdown else content.get('text','')
    stops=configuration.get('stopLabels',[])+aliases.get('name',[])
    if stops:
        pattern=r'(?im)^\s*(?:'+'|'.join(literal(value) for value in stops)+r')\s*(?:\n|\t|$)'
        first=re.search(pattern,text)
        if first:text=text[:first.start()]
    fields=[];issues=[];values={}
    alternatives=[]
    for i,field in enumerate(definitions):
        names=sorted(field['aliases'],key=len,reverse=True)
        alternatives.append('(?P<f'+str(i)+'>'+'|'.join(literal(alias) for alias in names)+')')
    matches=list(re.finditer(r'(?<!\w)(?:'+'|'.join(alternatives)+r')\s*(?:[:：]|\t)',text,re.I)) if alternatives else []
    for i,match in enumerate(matches):
        field=definitions[int(match.lastgroup[1:])]
        start=match.end();end=matches[i+1].start() if i+1<len(matches) else len(text)
        while start<end and text[start].isspace():start+=1
        newline=text.find('\n',start,end)
        if newline>=0:end=newline
        while end>start and text[end-1].isspace():end-=1
        value=text[start:end]
        fields.append({'key':field['key'],'label':field['label'],'group':field['group'],'value':value,
                       'sourceLabel':match.group(0).strip(),'sourceStart':start,'sourceEnd':end})
        if value:
            previous=values.setdefault(field['key'],value)
            if previous!=value:issues.append({'key':field['key'],'message':'El campo '+field['label']+' aparece con valores distintos. Revise el OCR.'})
            if field.get('valueType','text')=='numeric' and not re.fullmatch(r'[<>≤≥=]?\s*[+-]?\d+(?:[.,]\d+)?(?:[eE][+-]?\d+)?',value):
                issues.append({'key':field['key'],'message':'Se esperaba un valor numérico en '+field['label']+'. Se conserva el literal OCR.'})
    for field in definitions:
        if field.get('required') and field['key'] not in values:issues.append({'key':field['key'],'message':'Falta el campo obligatorio '+field['label']+'.'})
    return json.dumps({'page':page.get('page',1),'fields':fields,'sourceText':text,'sourceMarkdown':original,
                       'status':'not-configured' if not definitions else 'review' if issues else 'extracted' if fields else 'not-found','issues':issues},ensure_ascii=False)
}
}
