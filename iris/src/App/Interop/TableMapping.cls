/// Index literal HTML cells for deterministic table reconstruction.
Class App.Interop.TableMapping Extends %RegisteredObject
{
ClassMethod Prepare(inputJSON As %String) As %String [ Language = python ]
{
    import json,html,iris
    from html.parser import HTMLParser
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def run():
        source=json.loads(inputJSON)
        original=source['html']
        if not isinstance(original,str) or not 1<=len(original)<=131072:
            raise runtime.ProcessingError('La tabla completa supera el tamaño permitido.')
        class Index(HTMLParser):
            def __init__(self):
                super().__init__(convert_charrefs=True)
                self.parts=[];self.cells={};self.row=0;self.col=0;self.current=None;self.depth=0;self.tables=0
            def handle_starttag(self,tag,attrs):
                if tag=='table':
                    self.tables+=1;self.depth+=1
                    if self.depth>1:raise runtime.ProcessingError('No se admiten tablas anidadas en esta prueba.')
                if tag=='tr':self.row+=1;self.col=0
                if tag in ('td','th'):
                    self.col+=1;key=f'r{self.row}c{self.col}';attrs=dict(attrs)
                    spans={k:int(attrs.get(k,'1')) for k in ('rowspan','colspan')}
                    if any(not 1<=v<=100 for v in spans.values()):raise runtime.ProcessingError('Expansión de celdas no válida.')
                    self.current=key
                    self.cells[key]={'id':key,'row':self.row,'cell':self.col,'tag':tag,'text':'',**spans}
                    self.parts.append('<'+tag+f' data-ocr-cell="{key}"'+''.join(f' {k}="{v}"' for k,v in spans.items() if v!=1)+'>')
                elif tag in ('table','tr','thead','tbody','tfoot','caption','br'):
                    self.parts.append('<'+tag+'>')
                    if tag=='br' and self.current:self.cells[self.current]['text']+='\n'
            def handle_endtag(self,tag):
                if tag in ('td','th'):self.current=None
                if tag=='table':self.depth-=1
                if tag in ('table','tr','td','th','thead','tbody','tfoot','caption'):self.parts.append('</'+tag+'>')
            def handle_data(self,text):
                self.parts.append(html.escape(text))
                if self.current:self.cells[self.current]['text']+=text
        parser=Index();parser.feed(original)
        if parser.tables!=1 or not parser.cells or parser.depth!=0:
            raise runtime.ProcessingError('Se requiere una tabla HTML completa.')
        if len(parser.cells)>5000:raise runtime.ProcessingError('Demasiadas celdas para esta prueba.')
        return {'sourceHtml':original,'indexedHtml':''.join(parser.parts),'sourceCells':parser.cells}
    return runtime.stage_envelope(run)
}
}
