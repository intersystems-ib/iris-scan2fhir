Include %occStatus

Class App.Interop.DocumentContentOperation Extends Ens.BusinessOperation
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
        set envelope={}.%FromJSON(##class(App.Interop.DocumentContent).Clean(##class(App.Interop.Streams).Read(request.Pages)))
        set response.HttpStatus=envelope.httpStatus
        if envelope.httpStatus=200 {
            set definition="{}"
            if $isobject(request.Payload) set definition=##class(App.Interop.Streams).Read(request.Payload)
            set firstPage={}.%FromJSON(##class(App.Interop.DocumentHeader).Extract(envelope.result.pages.%Get(0).%ToJSON(),definition))
            do envelope.result.%Set("firstPageInformation",firstPage)
            set response.Success=1, response.Payload=##class(%Stream.GlobalCharacter).%New()
            do envelope.result.%ToJSON(response.Payload)
        } else { set response.Error=envelope.error }
    } catch ex {
        do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"document-content-cleaning"})
    }
    quit $$$OK
}
}
