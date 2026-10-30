Include %occStatus
Class App.Interop.DeterministicTableOperation Extends Ens.BusinessOperation
{
Parameter INVOCATION = "Queue";
XData MessageMap
{
<MapItems><MapItem MessageType="App.Interop.Message.Request"><Method>Handle</Method></MapItem></MapItems>
}
Method Handle(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response) As %Status
{
    set response=##class(App.Interop.Message.Response).%New(), response.RequestId=request.RequestId, response.InteropSessionId=..%SessionId
    set started=##class(App.Interop.PythonProcessor).Clock()
    try {
        set packet={}.%FromJSON(##class(App.Interop.DeterministicTables).Normalize(##class(App.Interop.Streams).Read(request.Payload)))
        set response.HttpStatus=packet.httpStatus
        if packet.httpStatus=200 {
            set response.Success=1, response.Payload=##class(%Stream.GlobalCharacter).%New()
            do packet.result.%ToJSON(response.Payload)
        } else { set response.Error=packet.error }
    } catch ex { do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"deterministic-tables"}) }
    set response.DurationMs=##class(App.Interop.PythonProcessor).Clock()-started
    quit $$$OK
}
}
