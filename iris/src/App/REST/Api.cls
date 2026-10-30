Include %occStatus

Class App.REST.Api Extends %CSP.REST
{
Parameter CHARSET = "utf-8";
Parameter CONTENTTYPE = "application/json";
Parameter CONVERTINPUTSTREAM = 0;
XData UrlMap
{
<Routes>
  <Route Url="/health" Method="GET" Call="Health" />
  <Route Url="/table-preview/status/:id" Method="GET" Call="PreviewStatus" />
  <Route Url="/table-preview" Method="POST" Call="PreviewTables" />
  <Route Url="/extraction" Method="POST" Call="ExtractDocument" />
  <Route Url="/discovery" Method="POST" Call="DiscoverDocument" />
  <Route Url="/fhir/model" Method="GET" Call="FHIRModel" />
  <Route Url="/fhir/preview" Method="POST" Call="FHIRPreview" />
  <Route Url="/catalog" Method="GET" Call="CatalogList" />
  <Route Url="/catalog/laboratories" Method="POST" Call="CatalogLaboratory" />
  <Route Url="/catalog/documents" Method="POST" Call="CatalogDocument" />
  <Route Url="/catalog/assign-laboratory" Method="POST" Call="CatalogAssignLaboratory" />
  <Route Url="/catalog/table-types" Method="POST" Call="CatalogTableType" />
  <Route Url="/catalog/identify" Method="POST" Call="CatalogIdentify" />
  <Route Url="/catalog/map-table" Method="POST" Call="CatalogMapTable" />
  <Route Url="/catalog/preview-information" Method="POST" Call="CatalogPreviewInformation" />
</Routes>
}
ClassMethod Health() As %Status
{
    set config = {}.%FromJSON(##class(App.Interop.PythonProcessor).Config())
    do config.%Set("service", "iris-scan2fhir")
    do config.%Set("status", "ok")
    do ..WriteJSON(config)
    quit $$$OK
}

ClassMethod PreviewStatus(id As %String) As %Status
{
    if '..ValidAnalysisId(id) { do ..WriteError("Identificador de análisis no válido.",422) return $$$OK }
    set progress=##class(App.Interop.PreviewProgress).Read(id)
    if '$isobject(progress) { do ..WriteError("Estado de análisis no disponible.",404) return $$$OK }
    do ..WriteJSON(progress)
    quit $$$OK
}

ClassMethod ValidAnalysisId(id As %String) As %Boolean [ Language = python ]
{
    import re
    return bool(re.fullmatch(r"[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}",id))
}

ClassMethod ExtractDocument() As %Status { quit ..PreviewTables(1) }

ClassMethod DiscoverDocument() As %Status { quit ..PreviewTables(0,1) }

ClassMethod PreviewTables(buildBundle As %Boolean = 0, discover As %Boolean = 0) As %Status
{
    try {
        set config = {}.%FromJSON(##class(App.Interop.PythonProcessor).Config())
        if $piece(%request.ContentType,";",1) '= "application/pdf" {
            do ..WriteError("Use Content-Type application/pdf y el PDF como cuerpo de la petición.", 415)
        } elseif %request.Content.Size > (config.maxPdfMB * 1048576) {
            do ..WriteError("El PDF supera el tamaño permitido.", 413)
        } else {
            set filename = $extract($get(%request.Data("filename",1),"laboratorio.pdf"),1,255)

                set selected=$get(%request.Data("definitionId",1),"")
                if (selected'="")&&((selected'?1.N)!(selected<1)) { do ..WriteError("Modelo de informe no válido.",422) return $$$OK }
                set input=##class(App.Interop.Message.Request).%New(), input.Stage="table-preview", input.RequestId=$system.Util.CreateGUID(), input.Filename=filename, input.PDF=%request.Content
                if buildBundle set input.Stage="document-extraction"
                if discover set input.Stage="document-discovery"
                set input.AnalysisId=$get(%request.Data("analysisId",1),input.RequestId)
                if '..ValidAnalysisId(input.AnalysisId) { do ..WriteError("Identificador de análisis no válido.",422) return $$$OK }
                if '##class(App.Interop.PreviewProgress).Begin(input.AnalysisId) { do ..WriteError("Este identificador de análisis ya se ha utilizado.",409) return $$$OK }
                set input.Payload=##class(%Stream.GlobalCharacter).%New()
                set options={"definitionId":(+selected)}
                if discover do options.%Set("laboratory",$get(%request.Data("laboratory",1),""))
                do options.%ToJSON(input.Payload)
                $$$ThrowOnError(##class(Ens.Director).CreateBusinessService("Laboratory Table Preview Service",.service))
                set sc=service.ProcessInput(input,.response)

            if $$$ISERR(sc) {
                do ##class(App.Interop.PreviewProgress).Update(input.AnalysisId,"failed")
                do ..WriteError("La producción de interoperabilidad no está disponible.",503)
            } elseif '$isobject(response) {
                do ##class(App.Interop.PreviewProgress).Update(input.AnalysisId,"failed")
                do ..WriteError("La producción no ha devuelto respuesta.",502)
            } else {
                do %response.SetHeader("X-Request-ID", response.RequestId)
                do %response.SetHeader("X-Interop-Session-ID", response.InteropSessionId)
                if 'response.Success {
                    do ##class(App.Interop.PreviewProgress).Update(input.AnalysisId,"failed")
                    do ..WriteError(response.Error, response.HttpStatus, response.RequestId, response.InteropSessionId)
                } else {
                    $$$ThrowOnError(##class(App.Interop.PreviewProgress).SaveResult(input.AnalysisId,response))
                    do response.Payload.Rewind()
                    do ..WriteJSON({}.%FromJSON(response.Payload), response.HttpStatus)
                }
            }
        }
    } catch ex {
        if $isobject($get(input)) do ##class(App.Interop.PreviewProgress).Update(input.AnalysisId,"failed")
        do ..WriteError("No se ha podido completar el análisis en IRIS.",500)
    }
    quit $$$OK
}

ClassMethod CatalogList() As %Status { quit ..CatalogCall("list") }

ClassMethod CatalogLaboratory() As %Status { quit ..CatalogCall("laboratory") }

ClassMethod CatalogDocument() As %Status { quit ..CatalogCall("document") }

ClassMethod CatalogAssignLaboratory() As %Status { quit ..CatalogCall("assign-laboratory") }

ClassMethod CatalogTableType() As %Status { quit ..CatalogCall("table-type") }

ClassMethod CatalogIdentify() As %Status { quit ..CatalogCall("identify") }

ClassMethod CatalogMapTable() As %Status { quit ..CatalogCall("map-table") }

ClassMethod CatalogPreviewInformation() As %Status { quit ..CatalogCall("preview-information") }

ClassMethod FHIRModel() As %Status { quit ..CatalogCall("fhir-model") }

ClassMethod FHIRPreview() As %Status
{
    try {
        if $piece(%request.ContentType,";",1)'="application/json" { do ..WriteError("Use Content-Type application/json.",415) return $$$OK }
        if %request.Content.Size>1048576 { do ..WriteError("La configuración supera el tamaño permitido.",413) return $$$OK }
        do %request.Content.Rewind()
        try { set payload={}.%FromJSON($zconvert(%request.Content.Read(%request.Content.Size),"I","UTF8")) }
        catch parseEx { do ..WriteError("El contenido no es JSON válido.",422) return $$$OK }
        if '..ValidAnalysisId(payload.%Get("analysisId","")) { do ..WriteError("Identificador de análisis no válido.",422) return $$$OK }
        set it=payload.%GetIterator()
        while it.%GetNext(.key,.value) { if (key'="analysisId")&&(key'="configuration") { do ..WriteError("Campos de petición FHIR incompatibles.",422) return $$$OK } }
        set input=##class(App.Interop.Message.Request).%New(), input.RequestId=$system.Util.CreateGUID(), input.Stage="fhir-preview", input.Payload=##class(%Stream.GlobalCharacter).%New()
        do payload.%ToJSON(input.Payload)
        $$$ThrowOnError(##class(Ens.Director).CreateBusinessService("FHIR Mapping Service",.service))
        $$$ThrowOnError(service.ProcessInput(input,.response))
        do %response.SetHeader("X-Interop-Session-ID",response.InteropSessionId)
        if response.Success { do ..WriteJSON({}.%FromJSON(##class(App.Interop.Streams).Read(response.Payload))) }
        else { do ..WriteError(response.Error,response.HttpStatus,response.RequestId,response.InteropSessionId) }
    } catch ex { do ..WriteError("No se ha podido completar la vista previa FHIR.",500) }
    quit $$$OK
}

ClassMethod CatalogCall(kind As %String) As %Status
{
    try {
        set payload="{}"
        if (kind'="list")&&(kind'="fhir-model") {
            if ($piece(%request.ContentType,";",1)'="application/json") { do ..WriteError("Use Content-Type application/json.",415) return $$$OK }
            if %request.Content.Size>131072 { do ..WriteError("La configuración supera el tamaño permitido.",413) return $$$OK }
            do %request.Content.Rewind()
            set payload=$zconvert(%request.Content.Read(%request.Content.Size),"I","UTF8")
        }
        if kind="fhir-model" { set options={"resourceType":($get(%request.Data("resourceType",1),"")),"path":($get(%request.Data("path",1),"")),"view":($get(%request.Data("view",1),""))}, payload=options.%ToJSON() }
        if kind="map-table" {
            set request=##class(App.Interop.Message.Request).%New(), request.RequestId=$system.Util.CreateGUID(), request.Stage="table-map-catalog"
            set request.Payload=##class(%Stream.GlobalCharacter).%New()
            do request.Payload.Write(payload)
            $$$ThrowOnError(##class(Ens.Director).CreateBusinessService("Laboratory Table Mapping Service",.service))
            set sc=service.ProcessInput(request,.response)
        } else { set sc=##class(App.Interop.CatalogService).Execute(kind,payload,.response) }
        if $$$ISERR(sc) { do ..WriteError("El catálogo no está disponible en interoperabilidad.",503) return $$$OK }
        do %response.SetHeader("X-Request-ID",response.RequestId), %response.SetHeader("X-Interop-Session-ID",response.InteropSessionId)
        if 'response.Success { do ..WriteError(response.Error,response.HttpStatus,response.RequestId,response.InteropSessionId) }
        else {
            set data={}.%FromJSON(##class(App.Interop.Streams).Read(response.Payload))
            do data.%Set("catalogTrace",{"requestId":(response.RequestId),"interopSessionId":(response.InteropSessionId),"aiSessionId":(response.AISessionId)})
            do ..WriteJSON(data,response.HttpStatus)
        }
    } catch ex { do ..WriteError("No se ha podido completar la operación del catálogo.",500) }
    quit $$$OK
}

ClassMethod WriteError(message As %String, status As %Integer, requestId As %String = "", interopSessionId As %String = "") As %Status
{
    set body = {"error":{"message":(message),"requestId":(requestId),"interopSessionId":(interopSessionId)}}
    do ..WriteJSON(body, status)
    quit $$$OK
}

ClassMethod WriteJSON(body As %DynamicAbstractObject, status As %Integer = 200)
{
    set %response.Status = status
    do %response.SetHeader("Cache-Control", "no-store")
    do %response.SetHeader("X-Content-Type-Options", "nosniff")
    set stream = ##class(%Stream.TmpCharacter).%New()
    do body.%ToJSON(stream)
    do stream.Rewind()
    do stream.OutputToDevice()
}
}


