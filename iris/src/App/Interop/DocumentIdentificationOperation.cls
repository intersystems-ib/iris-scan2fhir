Include %occStatus

Class App.Interop.DocumentIdentificationOperation Extends Ens.BusinessOperation
{
Parameter INVOCATION = "Queue";
XData MessageMap
{
<MapItems><MapItem MessageType="App.Interop.Message.Request"><Method>Handle</Method></MapItem></MapItems>
}
Method Handle(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response) As %Status
{
    set response=##class(App.Interop.Message.Response).%New()
    set response.RequestId=request.RequestId, response.InteropSessionId=request.InteropSessionId
    try {
        if request.Stage="document-discovery" {
            set envelope={}.%FromJSON(##class(App.Interop.DocumentDiscovery).Discover(##class(App.Interop.Streams).Read(request.Pages),##class(App.Interop.Streams).Read(request.Payload),request.RequestId,request.InteropSessionId))
        } else {
            set envelope={}.%FromJSON(##class(App.Interop.DocumentIdentifier).Identify(##class(App.Interop.Streams).Read(request.Pages)))
        }
        set response.HttpStatus=envelope.httpStatus
        if envelope.httpStatus=200 {
            set response.Success=1, response.Payload=##class(%Stream.GlobalCharacter).%New()
            do envelope.result.%ToJSON(response.Payload)
        } else { set response.Error=envelope.error, response.ErrorStage="document-identification" }
    } catch ex {
        do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"document-identification"})
    }
    quit $$$OK
}
}
