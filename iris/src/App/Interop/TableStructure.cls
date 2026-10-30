Class App.Interop.TableStructure Extends %RegisteredObject
{
ClassMethod HeaderAliases() As %String [ Language = python ]
{
    import json
    return json.dumps({'name':['prueba','pruebas','determinacion','determinaciones','parametro','analito','analisis','examen','test'],
                      'value':['resultado','resultados','valor','result','resuitado'],'unit':['unidad','unidades','units','unldades'],
                      'referenceRange':['valores de referencia','valores de referencla','valor de referencia','rango de referencia','intervalo de referencia','referencia','reference range','valores normales','valores de referenc1a','valores de referenda']},ensure_ascii=False)
}

ClassMethod Facts(pagesJSON As %String) As %String [ Language = python ]
{
    import json,re,hashlib,unicodedata,iris
    from html.parser import HTMLParser
    def norm(value):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',value.casefold()) if not unicodedata.combining(c)).split())
    aliases=json.loads(iris.cls('App.Interop.TableStructure').HeaderAliases())
    words={norm(v) for names in aliases.values() for v in names}|{'analyte','assay','reference','reference interval','formula leucocitaria'}
    def header_text(text):
        value=norm(text).strip(' :.')
        return value in words or bool(re.search(r'\b(?:resultado|unidades|valores de referen|valor %|v[.] absoluto)\b',value))
    number=re.compile(r'^\s*\(?\s*[<>≤≥=]*\s*[+-]?\d')
    class Table(HTMLParser):
        def __init__(self):super().__init__(convert_charrefs=True);self.rows=[];self.row=None;self.cell=None
        def handle_starttag(self,tag,attrs):
            if tag=='tr':self.row=[];self.rows.append(self.row)
            if tag in ('th','td') and self.row is not None:
                self.cell={'text':'','tag':tag,'colspan':int(dict(attrs).get('colspan',1)),'rowspan':int(dict(attrs).get('rowspan',1))};self.row.append(self.cell)
            if tag=='br' and self.cell is not None:self.cell['text']+=' '
        def handle_endtag(self,tag):
            if tag in ('th','td'):self.cell=None
            if tag=='tr':self.row=None
        def handle_data(self,value):
            if self.cell is not None:self.cell['text']+=value
    pages=json.loads(pagesJSON);header_cells={};tables=[];signatures=set()
    for page in pages:
        for ti,match in enumerate(re.finditer(r'<table\b[^>]*>.*?</table>',page.get('markdown') or '',re.I|re.S),1):
            parser=Table();parser.feed(match.group(0));selected=[];pattern=[];body_shapes=[];has_data=False
            for ri,row in enumerate(parser.rows):
                nonempty=[c for c in row if c['text'].strip()]
                measured=any(number.search(c['text']) or re.fullmatch(r'(?i)\s*(?:negativo|positivo|negative|positive|no reactivo|reactivo|ausente|presente)\s*',c['text']) for c in nonempty)
                qualified=ri<3 and not measured and (any(header_text(c['text']) for c in nonempty) or (len(nonempty)>=2 and all(c['tag']=='th' for c in nonempty)))
                if qualified:
                    band=[]
                    for ci,c in enumerate(row):
                        if not c['text'].strip() or not (c['tag']=='th' or header_text(c['text'])):continue
                        key=f'p{page["page"]}t{ti}r{ri+1}c{ci+1}'
                        header_cells[key]={'id':key,'text':' '.join(c['text'].split()),'table':f'p{page["page"]}t{ti}','page':page['page'],'row':ri+1,'cell':ci+1,'colspan':c['colspan'],'rowspan':c['rowspan']}
                        selected.append(key);band.append([ci+1,norm(c['text']),c['colspan'],c['rowspan']])
                    if band:pattern.append(band)
                else:
                    shape=['empty' if not c['text'].strip() else 'number-or-range' if number.search(c['text']) else 'text' for c in row]
                    if len(body_shapes)<3:body_shapes.append(shape)
                    if measured or any(re.search(r'(?i)\b(?:negativo|positivo|negativ[ea]|positive|normal|reactivo|ausente|presente)\b',c['text']) for c in row):has_data=True
            if selected:
                signature=hashlib.sha256(json.dumps(pattern,ensure_ascii=False,separators=(',',':')).encode()).hexdigest();signatures.add(signature)
                tables.append({'id':f'p{page["page"]}t{ti}','page':page['page'],'signature':signature,'headers':[header_cells[k] for k in selected],'bodyShapes':body_shapes,'hasData':has_data})
    return json.dumps({'tables':tables,'headerSignatures':sorted(signatures),'hasData':any(t['hasData'] for t in tables)},ensure_ascii=False)
}
}
