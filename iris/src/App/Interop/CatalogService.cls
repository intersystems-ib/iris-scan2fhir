Include %occStatus

Class App.Interop.CatalogService Extends Ens.BusinessService
{
Parameter ADAPTER = "";
Method OnProcessInput(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response, ByRef hint As %String) As %Status
{
    quit ..SendRequestSync("Laboratory Catalog Operation",request,.response,120,"Laboratory document catalog "_request.Stage)
}

ClassMethod Execute(stage As %String, payload As %String, Output response As App.Interop.Message.Response) As %Status
{
    set request=##class(App.Interop.Message.Request).%New(), request.RequestId=$system.Util.CreateGUID(), request.Stage="catalog:"_stage
    set request.Payload=##class(%Stream.GlobalCharacter).%New()
    do request.Payload.Write(payload)
    $$$ThrowOnError(##class(Ens.Director).CreateBusinessService("Laboratory Catalog Service",.service))
    quit service.ProcessInput(request,.response)
}
}
