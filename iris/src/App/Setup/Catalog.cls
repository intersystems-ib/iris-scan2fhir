Include %occStatus

Class App.Setup.Catalog Extends %RegisteredObject
{
ClassMethod Run() As %Status
{
    try {
        set seed={}.%FromJSON(##class(App.Interop.CatalogValidation).SeedData()), it=seed.tableTypes.%GetIterator()
        while it.%GetNext(.i,.item) {
            if ##class(App.Catalog.Repository).Version("table-type",item.code)=0 {
                set saved=##class(App.Catalog.Repository).Save("table-type",item.%ToJSON())
                if 'saved.ok throw ##class(%Exception.General).%New(saved.error)
            }
        }
        return $$$OK
    } catch ex { return ex.AsStatus() }
}
}
