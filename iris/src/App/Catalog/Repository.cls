Include %occStatus

Class App.Catalog.Repository Extends %RegisteredObject
{
ClassMethod Version(kind As %String, code As %String, lab As %Integer = 0) As %Integer
{
    if kind="table-type" { set rs=##class(%SQL.Statement).%ExecDirect(,"SELECT COALESCE(MAX(Version),0) AS V FROM App_Catalog.TableType WHERE Code=?",code) }
    else { set rs=##class(%SQL.Statement).%ExecDirect(,"SELECT COALESCE(MAX(Version),0) AS V FROM App_Catalog.DocumentDefinition WHERE Laboratory=? AND Code=?",lab,code) }
    if rs.%SQLCODE<0 throw ##class(%Exception.General).%New(rs.%Message)
    do rs.%Next()
    quit +rs.%Get("V")
}

ClassMethod Type(id As %Integer) As %DynamicObject
{
    set item=##class(App.Catalog.TableType).%OpenId(id)
    if '$isobject(item) quit ""
    set data={}.%FromJSON(##class(App.Interop.Streams).Read(item.Definition))
    do data.%Set("id",item.%Id()), data.%Set("version",item.Version), data.%Set("isLatest",item.Version=..Version("table-type",item.Code),"boolean")
    quit data
}

ClassMethod BoundTypeJSON(code As %String, version As %Integer) As %String
{
    set item=##class(App.Catalog.TableType).KeyIndexOpen(code,version)
    if '$isobject(item) quit ""
    set data=..Type(item.%Id())
    quit data.%ToJSON()
}

ClassMethod Definition(id As %Integer) As %DynamicObject
{
    set item=##class(App.Catalog.DocumentDefinition).%OpenId(id)
    if '$isobject(item) quit ""
    set data={}.%FromJSON(##class(App.Interop.Streams).Read(item.Definition))
    do data.%Set("id",item.%Id()), data.%Set("version",item.Version), data.%Set("laboratoryName",item.Laboratory.Name)
    do data.%Set("isLatest",item.Version=..Version("document",item.Code,item.Laboratory.%Id()),"boolean")
    do data.%Remove("engine")
    set types=data.%Get("tables","")
    if '$isobject(types) {
        set types=[], it=data.tableTypes.%GetIterator()
        while it.%GetNext(.i,.binding) {
            set t=##class(App.Catalog.TableType).KeyIndexOpen(binding.code,binding.version)
            if '$isobject(t) throw ##class(%Exception.General).%New("Missing bound table type")
            do types.%Push(..Type(t.%Id()))
        }
    }
    do data.%Set("tableTypeDefinitions",types), data.%Set("tables",types)
    set data={}.%FromJSON(##class(App.Interop.DocumentTables).Upgrade(data.%ToJSON()))
    if $isobject(item.Generation), item.Generation.Size>0 do data.%Set("generation",{}.%FromJSON(##class(App.Interop.Streams).Read(item.Generation)))
    // Keep the structural bindings of prior learned versions when a definition is extended or edited.
    set patterns={}, inheritedGeneration="", history=##class(%SQL.Statement).%ExecDirect(,"SELECT ID FROM App_Catalog.DocumentDefinition WHERE Laboratory=? AND Code=? AND Version<=? ORDER BY Version",item.Laboratory.%Id(),item.Code,item.Version)
    while history.%Next() {
        set previous=##class(App.Catalog.DocumentDefinition).%OpenId(history.%Get("ID"))
        if $isobject(previous.Generation), previous.Generation.Size>0 {
            set provenance={}.%FromJSON(##class(App.Interop.Streams).Read(previous.Generation)), it=provenance.%Get("tableBindings",[]).%GetIterator()
            set inheritedGeneration=provenance
            while it.%GetNext(.i,.binding) {
                set allowed=0, bindings=data.tableTypes.%GetIterator()
                while bindings.%GetNext(.j,.declared) { if (declared.code=binding.code)&&(declared.version=binding.version) set allowed=1 }
                if allowed do patterns.%Set(binding.%Get("signature","")_"|"_binding.%Get("page",0)_"|"_binding.%Get("table",0)_"|"_binding.code_"|"_binding.version,binding)
            }
        }
    }
    if '$isobject(data.%Get("generation")),$isobject(inheritedGeneration) do data.%Set("generation",inheritedGeneration)
    set list=[], it=patterns.%GetIterator()
    while it.%GetNext(.i,.binding) { do list.%Push(binding) }
    do data.%Set("tablePatterns",list)
    quit data
}

ClassMethod List() As %DynamicObject
{
    set labs=[], types=[], documents=[]
    set rs=##class(%SQL.Statement).%ExecDirect(,"SELECT ID FROM App_Catalog.Laboratory ORDER BY Name")
    while rs.%Next() {
        set lab=##class(App.Catalog.Laboratory).%OpenId(rs.%Get("ID"))
        set item={"code":(lab.Code),"name":(lab.Name),"revision":(lab.Revision)}
        do item.%Set("recognitionAliases",[].%FromJSON(##class(App.Interop.DocumentIdentifier).LaboratoryAliases(lab.Name,lab.RecognitionAliases)))
        do item.%Set("enabled",lab.Enabled,"boolean"), labs.%Push(item)
    }
    set rs=##class(%SQL.Statement).%ExecDirect(,"SELECT ID FROM App_Catalog.TableType ORDER BY Code,Version DESC")
    while rs.%Next() { do types.%Push(..Type(rs.%Get("ID"))) }
    set rs=##class(%SQL.Statement).%ExecDirect(,"SELECT ID FROM App_Catalog.DocumentDefinition ORDER BY Laboratory,Code,Version DESC")
    while rs.%Next() { do documents.%Push(..Definition(rs.%Get("ID"))) }
    set presets=[].%FromJSON(##class(App.Catalog.HeaderPresets).JSON())
    quit {"laboratories":(labs),"tableTypes":(types),"documents":(documents),"headerPresets":(presets)}
}

ClassMethod SnapshotJSON() As %String
{
    set data=..List()
    quit data.%ToJSON()
}

ClassMethod MappingSchema(definitionId As %Integer, code As %String, version As %Integer) As %String
{
    set definition=..Definition(definitionId)
    if '$isobject(definition) quit {"ok":false,"error":"Definición documental no encontrada."}.%ToJSON()
    set it=definition.tableTypeDefinitions.%GetIterator()
    while it.%GetNext(.i,.item) {
        if (item.code=code)&&(item.version=version) return {"ok":true,"definitionId":(definitionId),"definitionVersion":(definition.version),"laboratory":(definition.laboratory),"tableType":(item)}.%ToJSON()
    }
    quit {"ok":false,"error":"El tipo de tabla y su versión no están asociados a este documento."}.%ToJSON()
}

/// Save discovery atomically without replacing an existing laboratory or document version.
ClassMethod SaveDiscovery(laboratoryJSON As %String, documentJSON As %String, generationJSON As %String) As %String
{
    set level=$tlevel
    tstart
    try {
        if laboratoryJSON'="" {
            set result=..Save("laboratory",laboratoryJSON)
            if 'result.ok { trollback 1 return result.%ToJSON() }
        }
        set result=..Save("document",documentJSON)
        if 'result.ok { trollback 1 return result.%ToJSON() }
        set record=##class(App.Catalog.DocumentDefinition).%OpenId(result.saved.id)
        set record.Generation=##class(%Stream.GlobalCharacter).%New()
        do record.Generation.Write(generationJSON)
        $$$ThrowOnError(record.%Save())
        set definition=..Definition(record.%Id()), output={"ok":true,"definition":(definition)}
        tcommit
        return output.%ToJSON()
    } catch ex {
        if $tlevel>level trollback 1
        return {"ok":false,"httpStatus":422,"error":(##class(App.Interop.Diagnostics).Sanitize($system.Status.GetErrorText(ex.AsStatus())))}.%ToJSON()
    }
}

/// Move the complete format history without changing IDs, table bindings or FHIR mappings.
ClassMethod AssignLaboratory(json As %String) As %DynamicObject
{
    set level=$tlevel
    try {
        set input={}.%FromJSON(json), id=input.%Get("definitionId",""), version=input.%Get("baseVersion","")
        if (id'?1.N)!(version'?1.N) return {"ok":false,"httpStatus":422,"error":"Indique el formato y su versión actual."}
        if input.%IsDefined("activate"),input.%GetTypeOf("activate")'="boolean" return {"ok":false,"httpStatus":422,"error":"La activación debe ser un valor booleano."}
        tstart
        set current=##class(App.Catalog.DocumentDefinition).%OpenId(id), lab=##class(App.Catalog.Laboratory).CodeIndexOpen(input.%Get("laboratory",""))
        if '$isobject(current)!('$isobject(lab)) { trollback 1 return {"ok":false,"httpStatus":422,"error":"Formato o laboratorio no encontrado."} }
        if lab.Code="unidentified" { trollback 1 return {"ok":false,"httpStatus":422,"error":"Seleccione un laboratorio identificado."} }
        set oldLab=current.Laboratory.%Id(), code=current.Code
        if current.Laboratory.Code'=input.%Get("sourceLaboratory","") { trollback 1 return {"ok":false,"httpStatus":409,"error":"La asignación del laboratorio ha cambiado. Recargue el catálogo."} }
        if (current.Version'=version)!(..Version("document",code,oldLab)'=version) { trollback 1 return {"ok":false,"httpStatus":409,"error":"El formato ha cambiado. Recargue el catálogo antes de asignarlo."} }
        if oldLab'=lab.%Id(),..Version("document",code,lab.%Id())>0 { trollback 1 return {"ok":false,"httpStatus":409,"error":"El laboratorio de destino ya tiene un formato con este código."} }
        set history=##class(%SQL.Statement).%ExecDirect(,"SELECT ID FROM App_Catalog.DocumentDefinition WHERE Laboratory=? AND Code=? ORDER BY Version",oldLab,code), ids=[]
        while history.%Next() { do ids.%Push(history.%Get("ID")) }
        set it=ids.%GetIterator()
        while it.%GetNext(.i,.recordId) {
            set record=##class(App.Catalog.DocumentDefinition).%OpenId(recordId), data={}.%FromJSON(##class(App.Interop.Streams).Read(record.Definition))
            set record.Laboratory=lab
            do data.%Set("laboratory",lab.Code)
            if recordId=id do data.%Set("enabled",input.%Get("activate",data.%Get("enabled",0)),"boolean")
            set rec=data.recognition, phrases=rec.issuerPhrases
            if (phrases.%Size()=0)!((phrases.%Size()=1)&&(phrases.%Get(0)="Laboratorio por identificar")) do rec.%Set("issuerPhrases",[(lab.Name)])
            set record.Definition=##class(%Stream.GlobalCharacter).%New()
            do data.%ToJSON(record.Definition)
            if $isobject(record.Generation),record.Generation.Size>0 {
                set generation={}.%FromJSON(##class(App.Interop.Streams).Read(record.Generation))
                do generation.%Set("laboratoryIdentified",1,"boolean")
                set record.Generation=##class(%Stream.GlobalCharacter).%New()
                do generation.%ToJSON(record.Generation)
            }
            $$$ThrowOnError(record.%Save())
        }
        tcommit
        return {"ok":true,"saved":{"id":(id),"version":(version),"laboratory":(lab.Code)}}
    } catch ex {
        if $tlevel>level trollback 1
        return {"ok":false,"httpStatus":422,"error":(##class(App.Interop.Diagnostics).Sanitize($system.Status.GetErrorText(ex.AsStatus())))}
    }
}

ClassMethod Save(kind As %String, json As %String) As %DynamicObject
{
    set checked={}.%FromJSON(##class(App.Interop.CatalogValidation).Validate(kind,json))
    if checked.httpStatus'=200 quit {"ok":false,"httpStatus":(checked.httpStatus),"error":(checked.error)}
    set data=checked.result, level=$tlevel
    tstart
    try {
        if kind="laboratory" {
            set record=##class(App.Catalog.Laboratory).CodeIndexOpen(data.code), revision=0
            if $isobject(record) set revision=record.Revision
            if data.baseRevision'=revision { trollback 1 return {"ok":false,"httpStatus":409,"error":"El laboratorio ha cambiado. Recargue el catálogo antes de guardar."} }
            if '$isobject(record) set record=##class(App.Catalog.Laboratory).%New(), record.Code=data.code
            set record.Name=data.name, record.Enabled=data.enabled, record.Revision=revision+1
            if data.%IsDefined("recognitionAliases") set record.RecognitionAliases=data.recognitionAliases.%ToJSON()
            $$$ThrowOnError(record.%Save())
            set result={"code":(record.Code),"revision":(record.Revision)}
        } else {
            set labId=0
            if kind="document" {
                set lab=##class(App.Catalog.Laboratory).CodeIndexOpen(data.laboratory)
                if '$isobject(lab) { trollback 1 return {"ok":false,"httpStatus":422,"error":"Laboratorio no encontrado."} }
                set labId=lab.%Id()
                if 'data.%IsDefined("tables") {
                    set tables=[], it=data.tableTypes.%GetIterator()
                    while it.%GetNext(.i,.binding) {
                        set source=##class(App.Catalog.TableType).KeyIndexOpen(binding.code,binding.version)
                        if '$isobject(source) throw ##class(%Exception.General).%New("Tipo de tabla o versión no encontrado.")
                        do tables.%Push(..Type(source.%Id()))
                    }
                    do data.%Set("tables",tables)
                }
            }
            set current=..Version(kind,data.code,labId)
            if data.baseVersion'=current { trollback 1 return {"ok":false,"httpStatus":409,"error":"La definición ha cambiado. Recargue el catálogo antes de crear otra versión."} }
            if kind="table-type" {
                set record=##class(App.Catalog.TableType).%New()
            } else {
                set record=##class(App.Catalog.DocumentDefinition).%New(), record.Laboratory=lab
            }
            set record.Code=data.code, record.Version=current+1
            do data.%Remove("baseVersion")
            set record.Definition=##class(%Stream.GlobalCharacter).%New()
            do data.%ToJSON(record.Definition)
            $$$ThrowOnError(record.%Save())
            set result={"id":(record.%Id()),"code":(record.Code),"version":(record.Version)}
        }
        tcommit
        return {"ok":true,"saved":(result)}
    } catch ex {
        if $tlevel>level trollback 1
        return {"ok":false,"httpStatus":422,"error":(##class(App.Interop.Diagnostics).Sanitize($system.Status.GetErrorText(ex.AsStatus())))}
    }
}
}
