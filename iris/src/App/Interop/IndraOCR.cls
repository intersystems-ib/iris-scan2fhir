/// Indra OCR adapter. Original text, HTML tables and line geometry are kept together.
Class App.Interop.IndraOCR Extends %RegisteredObject
{
ClassMethod Context() [ Language = python ]
{
    global _scan2fhir_indra_runtime
    try:return _scan2fhir_indra_runtime
    except NameError:pass
    import json,os,threading
    from pathlib import Path
    from types import SimpleNamespace
    from importlib.metadata import version

    class ProcessingError(Exception):
        def __init__(self,message,status=422):super().__init__(message);self.status=status

    lock=threading.Lock();converter=None
    def extract_pdf(path):
        import pypdfium2 as pdfium,indra_ocr
        nonlocal converter
        try:
            with pdfium.PdfDocument(str(path)) as pdf:count=len(pdf)
        except Exception as exc:raise ProcessingError('El PDF está dañado o protegido con contraseña.') from exc
        if not 1<=count<=int(os.getenv('MAX_PDF_PAGES','20')):
            raise ProcessingError('El PDF supera el límite de páginas o está vacío.',413)
        pages=[]
        with lock:
            if converter is None:converter=indra_ocr.load(threads=max(1,int(os.getenv('OCR_THREADS','4'))),furniture=True)
            for index,(_,page) in enumerate(converter.convert(str(path),max_pages=count),1):
                if page.source=='error':raise ProcessingError('Indra no ha podido reconocer la página '+str(index)+'.')
                lines=[{'id':i+1,'text':line.text,'bbox':[float(v) for v in line.box],'confidence':float(line.conf)}
                       for i,line in enumerate(page.lines)]
                blocks=[{'label':block['label'],'bbox':[float(v) for v in block['bbox']],'text':block['text']} for block in page.blocks]
                pages.append({'page':index,'text':page.text,'markdown':page.markdown,'source':page.source,
                    'layout':{'coordinateUnits':'pixels','boxOrder':['left','top','right','bottom'],
                        'rotationDegrees':page.rotation,'skewDegrees':page.skew,'vertical':page.vertical,
                        'lines':lines,'blocks':blocks}})
        if len(pages)!=count:raise ProcessingError('Indra no ha devuelto todas las páginas del documento.')
        if not any(p['text'].strip() for p in pages):raise ProcessingError('No se ha reconocido texto en el documento.')
        return pages

    def stage_envelope(action):
        try:return json.dumps({'httpStatus':200,'result':action()},ensure_ascii=False,allow_nan=False)
        except ProcessingError as exc:return json.dumps({'httpStatus':exc.status,'error':str(exc)},ensure_ascii=False)
        except Exception:return json.dumps({'httpStatus':500,'error':'Error interno durante el procesamiento del documento.'})

    def ocr_stage(path):
        try:
            pdf=Path(path).read_bytes()
            if len(pdf)>int(os.getenv('MAX_PDF_MB','10'))*1024*1024:raise ProcessingError('El PDF supera el tamaño permitido.',413)
            if not pdf.startswith(b'%PDF-'):raise ProcessingError('El archivo no es un PDF válido.',415)
            return json.dumps({'httpStatus':200,'result':{'pages':extract_pdf(path),'engine':'indra',
                'engineVersion':version('indra-ocr'),'ocrBackend':'onnxruntime'}},ensure_ascii=False,allow_nan=False)
        except ProcessingError as exc:return json.dumps({'httpStatus':exc.status,'error':str(exc)},ensure_ascii=False)

    runtime=SimpleNamespace(ProcessingError=ProcessingError,extract_pdf=extract_pdf,stage_envelope=stage_envelope,ocr_stage=ocr_stage)
    _scan2fhir_indra_runtime=runtime
    return runtime
}
}
