Include %occStatus
Class App.Interop.FHIRMappingOperation Extends Ens.BusinessOperation
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
        set packet={}.%FromJSON(##class(App.Interop.Streams).Read(request.Payload))
        if request.Stage="fhir-plan" {
            set result={}.%FromJSON(##class(App.FHIR.RowCompiler).Compile(packet.definition.%ToJSON(),packet.analysis.%ToJSON()))
        } else {
            set result={}.%FromJSON(##class(App.FHIR.Mapping).Transform(packet.analysis.%ToJSON(),packet.definition.%ToJSON(),packet.configuration.%ToJSON()))
        }
        set response.HttpStatus=result.httpStatus
        if result.httpStatus=200 {
            set response.Success=1, response.Payload=##class(%Stream.GlobalCharacter).%New()
            do result.result.%ToJSON(response.Payload)
        } else { set response.Error=result.error }
    } catch ex { do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"fhir-transform"}) }
    set response.DurationMs=##class(App.Interop.PythonProcessor).Clock()-started
    quit $$$OK
}
}
