Include %occStatus

Class App.Interop.PythonProcessor Extends %RegisteredObject
{
ClassMethod Clock() As %Double [ Language = python ]
{
    import time
    return time.perf_counter_ns()/1000000
}

ClassMethod OCR(path As %String) As %String [ Language = python ]
{
    import iris
    return iris.cls('App.Interop.PythonProcessor').Context().ocr_stage(path)
}

ClassMethod TemporaryPDF(pdf As %Stream.Object, Output path As %String) As %Status
{
    set path="/tmp/scan2fhir-"_$translate($system.Util.CreateGUID(),"{}","")_".pdf"
    set file=##class(%Stream.FileBinary).%New(), sc=file.LinkToFile(path)
    quit:$$$ISERR(sc) sc
    do pdf.Rewind()
    set sc=file.CopyFrom(pdf)
    if $$$ISOK(sc) set sc=file.%Save()
    do file.%Close()
    quit sc
}

ClassMethod Config() As %String [ Language = python ]
{
    import json,os
    from importlib.metadata import version
    return json.dumps({'maxPdfMB':int(os.getenv('MAX_PDF_MB','10')),'maxPdfPages':int(os.getenv('MAX_PDF_PAGES','20')),
        'processingMode':'deterministic-table-preview',
        'ocrEngine':'indra','ocrVersion':version('indra-ocr'),'ocrBackend':'onnxruntime','ocrDevice':'cpu',
        'production':'App.Interop.Production'})
}

ClassMethod Context() [ Language = python ]
{
    import iris
    return iris.cls('App.Interop.IndraOCR').Context()
}
}
