Include %occStatus

/// Entry point for transforming an individual HTML table with its template.
Class App.Interop.TableMappingService Extends Ens.BusinessService
{
Parameter ADAPTER = "";
Method OnProcessInput(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response, ByRef hint As %String) As %Status
{
    quit ..SendRequestSync("Deterministic Table Operation",request,.response,120,"Deterministic table extraction with template")
}
}
