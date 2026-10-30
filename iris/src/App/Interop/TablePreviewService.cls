Include %occStatus

Class App.Interop.TablePreviewService Extends Ens.BusinessService
{
Parameter ADAPTER = "";
Method OnProcessInput(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response, ByRef hint As %String) As %Status
{
    quit ..SendRequestSync("Laboratory Table Preview Process",request,.response,1800,"Extract and normalize OCR tables, then build the configured FHIR Bundle")
}
}
