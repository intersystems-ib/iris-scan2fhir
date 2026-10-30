Include %occStatus
Class App.Interop.FHIRMappingService Extends Ens.BusinessService
{
Parameter ADAPTER = "";
Method OnProcessInput(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response, ByRef hint As %String) As %Status
{
    quit ..SendRequestSync("FHIR Mapping Process",request,.response,300,"FHIR R5 mapping preview")
}
}
