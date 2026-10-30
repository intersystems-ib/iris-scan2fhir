Include %occStatus

Class App.Interop.CatalogOperation Extends Ens.BusinessOperation
{
Parameter INVOCATION = "Queue";
XData MessageMap
{
<MapItems><MapItem MessageType="App.Interop.Message.Request"><Method>Handle</Method></MapItem></MapItems>
}
Method Handle(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response) As %Status
{
    set response=##class(App.Interop.Message.Response).%New(), response.RequestId=request.RequestId, response.InteropSessionId=..%SessionId
    try {
        if request.Stage="catalog:list" {
            set result=##class(App.Catalog.Repository).List()
        } elseif request.Stage="catalog:fhir-model" {
            set input={}.%FromJSON(##class(App.Interop.Streams).Read(request.Payload))
            set envelope={}.%FromJSON(##class(App.FHIR.ModelCatalog).Describe(input.%Get("resourceType",""),input.%Get("path",""),input.%Get("view","")))
            if envelope.httpStatus'=200 { set response.Error=envelope.error, response.HttpStatus=envelope.httpStatus return $$$OK }
            set result=envelope.result
        } elseif request.Stage="catalog:preview-information" {
            set envelope={}.%FromJSON(##class(App.Interop.InformationTables).Preview(##class(App.Interop.Streams).Read(request.Payload)))
            if envelope.httpStatus'=200 { set response.Error=envelope.error, response.HttpStatus=envelope.httpStatus return $$$OK }
            set result=envelope.result
        } elseif request.Stage="catalog:assign-laboratory" {
            set result=##class(App.Catalog.Repository).AssignLaboratory(##class(App.Interop.Streams).Read(request.Payload))
            if 'result.ok { set response.Error=result.error, response.HttpStatus=result.httpStatus return $$$OK }
        } elseif request.Stage="catalog:identify" {
            set input={}.%FromJSON(##class(App.Interop.Streams).Read(request.Payload))
            set envelope={}.%FromJSON(##class(App.Interop.DocumentIdentifier).Identify(input.pages.%ToJSON()))
            if envelope.httpStatus'=200 { set response.Error=envelope.error, response.HttpStatus=envelope.httpStatus return $$$OK }
            set result=envelope.result
        } else {
            set kind=$piece(request.Stage,":",2)
            if (kind'="laboratory")&&(kind'="document")&&(kind'="table-type") { set response.Error="Operación de catálogo no admitida.", response.HttpStatus=422 return $$$OK }
            set result=##class(App.Catalog.Repository).Save(kind,##class(App.Interop.Streams).Read(request.Payload))
            if 'result.ok { set response.Error=result.error, response.HttpStatus=result.httpStatus return $$$OK }
        }
        set response.Success=1, response.HttpStatus=200, response.Payload=##class(%Stream.GlobalCharacter).%New()
        do result.%ToJSON(response.Payload)
    } catch ex {
        do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":(request.Stage)})
    }
    quit $$$OK
}
}
