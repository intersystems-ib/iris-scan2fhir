Include %occStatus
/// Preserve the previous header configuration as data in a NEW immutable version of legacy definitions.
Class App.Setup.HeaderDefinitions Extends %RegisteredObject
{
ClassMethod Run() As %Status
{
    try {
        set catalog=##class(App.Catalog.Repository).List(), it=catalog.documents.%GetIterator()
        set presets=[].%FromJSON(##class(App.Catalog.HeaderPresets).JSON()), legacy=presets.%Get(0).configuration
        while it.%GetNext(.i,.document) {
            if document.isLatest,'document.%IsDefined("headerExtraction") {
                set data={}
                for field="laboratory","code","name","recognition","headerAliases","tableTypes","tables" { do data.%Set(field,document.%Get(field)) }
                do data.%Set("fhirMapping",document.%Get("fhirMapping",{"enabled":false,"rules":[]}))
                do data.%Set("enabled",document.enabled,"boolean")
                do data.%Set("baseVersion",document.version), data.%Set("headerExtraction",legacy)
                set saved=##class(App.Catalog.Repository).Save("document",data.%ToJSON())
                if 'saved.ok throw ##class(%Exception.General).%New(saved.error)
            }
        }
    } catch ex { return ex.AsStatus() }
    quit $$$OK
}
}
