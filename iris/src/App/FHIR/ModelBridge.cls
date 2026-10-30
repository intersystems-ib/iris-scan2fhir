Include %occStatus
Class App.FHIR.ModelBridge Extends %RegisteredObject
{
ClassMethod Check(json As %String) As %String
{
    try {
        set data={}.%FromJSON(json), class="Spain.FHIR.DTL.vR5.Model.Resource."_data.resourceType
        if '##class(%Dictionary.CompiledClass).%ExistsId(class) throw ##class(%Exception.General).%New("Modelo R5 no disponible")
        set model=$classmethod(class,"FromJSONHelper",data,"vR4")
        $$$ThrowOnError(model.%ValidateObject())
        set output=model.ToJSON()
        return {"ok":true,"modelClass":(class),"json":(##class(App.Interop.Streams).Read(output))}.%ToJSON()
    } catch ex { return {"ok":false,"error":(##class(App.Interop.Diagnostics).Sanitize($system.Status.GetErrorText(ex.AsStatus())))}.%ToJSON() }
}

ClassMethod Bundle(json As %String) As %String
{
    try {
        set data={}.%FromJSON(json), model=##class(Spain.FHIR.DTL.vR5.Model.Resource.Bundle).%New(), model.type="collection"
        set it=data.entry.%GetIterator()
        while it.%GetNext(.i,.item) {
            set class="Spain.FHIR.DTL.vR5.Model.Resource."_item.resource.resourceType
            set resource=$classmethod(class,"FromJSONHelper",item.resource,"vR4")
            $$$ThrowOnError(resource.%ValidateObject())
            set entry=##class(Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry).%New(), entry.fullUrl=item.fullUrl, entry.resource=resource
            do model.entry.Insert(entry)
        }
        $$$ThrowOnError(model.%ValidateObject())
        set output=model.ToJSON()
        return {"ok":true,"json":(##class(App.Interop.Streams).Read(output))}.%ToJSON()
    } catch ex { return {"ok":false,"error":(##class(App.Interop.Diagnostics).Sanitize($system.Status.GetErrorText(ex.AsStatus())))}.%ToJSON() }
}
}
