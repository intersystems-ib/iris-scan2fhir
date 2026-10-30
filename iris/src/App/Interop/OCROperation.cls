Include %occStatus

Class App.Interop.OCROperation Extends Ens.BusinessOperation
{
Parameter INVOCATION = "Queue";
XData MessageMap
{
<MapItems><MapItem MessageType="App.Interop.Message.Request"><Method>Handle</Method></MapItem></MapItems>
}
Method Handle(pRequest As App.Interop.Message.Request, Output pResponse As App.Interop.Message.Response) As %Status
{
    set pResponse = ##class(App.Interop.Message.Response).%New()
    set pResponse.RequestId = pRequest.RequestId
    set pResponse.InteropSessionId = pRequest.InteropSessionId
    set started=##class(App.Interop.PythonProcessor).Clock()
    set path = ""
    try {
        $$$ThrowOnError(##class(App.Interop.PythonProcessor).TemporaryPDF(pRequest.PDF, .path))
        set envelope = {}.%FromJSON(##class(App.Interop.PythonProcessor).OCR(path))
        set pResponse.HttpStatus = envelope.httpStatus
        if envelope.httpStatus = 200 {
            set pResponse.Success = 1
            set pResponse.Payload = ##class(%Stream.GlobalCharacter).%New()
            do envelope.result.%ToJSON(pResponse.Payload)
        } else {
            set pResponse.Error = envelope.error
        }
    } catch ex {
        do ##class(App.Interop.Diagnostics).Capture(pResponse,ex.AsStatus(),{"stage":"ocr","engine":"indra"})
    }
    if path '= "" do ##class(%File).Delete(path)
    set pResponse.DurationMs=##class(App.Interop.PythonProcessor).Clock()-started
    quit $$$OK
}
}

