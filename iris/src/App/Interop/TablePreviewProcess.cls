Include %occStatus

/// Separate discovery and extraction workflows, with every stage traced through operations.
Class App.Interop.TablePreviewProcess Extends Ens.BusinessProcess
{
Method OnRequest(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response) As %Status
{
    set response=##class(App.Interop.Message.Response).%New(), response.RequestId=request.RequestId, response.InteropSessionId=..%SessionId
    set started=##class(App.Interop.PythonProcessor).Clock()
    try {
        do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"ocr")
        set input=..Stage(request,"ocr"), input.PDF=request.PDF
        $$$ThrowOnError(..SendRequestSync("Indra OCR Operation",input,.ocr,600,"Indra PDF conversion and OCR"))
        if 'ocr.Success { set response=ocr return $$$OK }
        do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"identification",0,"","",ocr.DurationMs)
        set original={}.%FromJSON(ocr.Payload).pages
        set input=..Stage(request,"document-identification"), input.Pages=##class(%Stream.GlobalCharacter).%New()
        do original.%ToJSON(input.Pages)
        $$$ThrowOnError(..SendRequestSync("Document Identification Operation",input,.identified,120,"Identify existing document model without creating definitions"))
        if 'identified.Success { set response=identified return $$$OK }
        set classification={}.%FromJSON(identified.Payload), definition=classification.%Get("definitionSnapshot"), selected=0
        set discovery=(request.Stage="document-discovery")
        if discovery,$isobject(request.Payload) {
            set selectedLab={}.%FromJSON(request.Payload).%Get("laboratory","")
            if selectedLab'="" {
                do classification.%Set("discoveryLaboratory",selectedLab)
                if $isobject(definition),definition.laboratory'=selectedLab set definition=""
            }
        }
        if discovery,$isobject(definition) {
            set strategy=definition.%Get("generation",{}).%Get("strategy","")
            if (strategy'="header-grid-v1")&&(strategy'="header-grid-v2") set definition=""
        }
        if discovery,$isobject(definition) {
            if '##class(App.Interop.DocumentDiscovery).Covers(original.%ToJSON(),definition.%ToJSON()) set definition=""
        }
        if discovery,'$isobject(definition) {
            do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"discovery")
            set input=..Stage(request,"document-discovery"), input.Pages=##class(%Stream.GlobalCharacter).%New(), input.Payload=##class(%Stream.GlobalCharacter).%New()
            do original.%ToJSON(input.Pages), classification.%ToJSON(input.Payload)
            $$$ThrowOnError(..SendRequestSync("Document Identification Operation",input,.identified,120,"Discover document tables and save a reviewable owned definition"))
            if 'identified.Success { set response=identified return $$$OK }
            set classification={}.%FromJSON(identified.Payload), definition=classification.%Get("definitionSnapshot")
        }
        if $isobject(request.Payload), request.Payload.Size>0 set selected={}.%FromJSON(request.Payload).%Get("definitionId",0)
        if selected>0 {
            set catalogRequest=..Stage(request,"catalog:list")
            $$$ThrowOnError(..SendRequestSync("Laboratory Catalog Operation",catalogRequest,.catalogResponse,120,"Read selected document model"))
            if 'catalogResponse.Success { set response=catalogResponse return $$$OK }
            set documents={}.%FromJSON(catalogResponse.Payload).documents, it=documents.%GetIterator(), definition=""
            while it.%GetNext(.i,.candidate) { if candidate.id=selected set definition=candidate }
        }
        if '$isobject(definition) {
            set response.HttpStatus=422, response.Error="No se ha reconocido un formato. Use Descubrimiento para detectar sus tablas o seleccione una definición existente."
            return $$$OK
        }
        do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"preparation")
        set input=..Stage(request,"document-content-cleaning"), input.Pages=##class(%Stream.GlobalCharacter).%New()
        set input.Payload=##class(%Stream.GlobalCharacter).%New()
        do definition.%ToJSON(input.Payload)
        do original.%ToJSON(input.Pages)
        $$$ThrowOnError(..SendRequestSync("Document Content Cleaning Operation",input,.cleaned,120,"Exclude page margins before table preview"))
        if 'cleaned.Success { set response=cleaned return $$$OK }
        set contentResult={}.%FromJSON(cleaned.Payload), firstPageInformation=contentResult.firstPageInformation
        set pages={}.%FromJSON(cleaned.Payload).pages, outputPages=[], sessions=[], previous="", extractionMs=0, accepted=0, rejected=0, it=pages.%GetIterator()
        while it.%GetNext(.i,.page) {
            do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"preparation",page.page)
            set source=page.content
            do source.%Set("page",page.page)
            do source.%Set("previousLayout",previous)
            set prepared={}.%FromJSON(##class(App.Interop.TableReconstruction).PreparePage(source.%ToJSON(),definition.%ToJSON()))
            if prepared.httpStatus'=200 { set response.Error=prepared.error, response.HttpStatus=prepared.httpStatus return $$$OK }
            set tables=[], jobs=prepared.result.jobs.%GetIterator()
            while jobs.%GetNext(.j,.job) {
                do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"extraction",page.page,job.id)
                set table={"id":(job.id),"status":"review","reason":"","aiSessionId":"","sourceHtml":(job.sourceHtml),"engine":"deterministic-v1"}
                if job.%IsDefined("sourceDerivation") do table.%Set("sourceDerivation",job.sourceDerivation)
                set payload={"html":(job.sourceHtml),"definition":(definition),"previousLayout":(previous)}
                if discovery,'$isobject(job.input) do payload.%Set("rawFallback",1,"boolean")
                if job.%Get("selection","")="header-candidate" do payload.%Set("headerCandidate",1,"boolean")
                if $isobject(job.input), job.selection'="continuation" do payload.%Set("tableType",job.input.tableType)
                set input=..Stage(request,"deterministic-table"), input.PageNumber=page.page, input.Payload=##class(%Stream.GlobalCharacter).%New()
                do payload.%ToJSON(input.Payload)
                $$$ThrowOnError(..SendRequestSync("Deterministic Table Operation",input,.mapped,120,"Deterministic normalization "_job.id))
                do table.%Set("extractionMs",mapped.DurationMs)
                set extractionMs=extractionMs+mapped.DurationMs
                if mapped.Success {
                    set result={}.%FromJSON(mapped.Payload), table.status=result.status
                    do table.%Set("result",result), table.%Set("sourceCells",result.sourceCells)
                    if result.%Get("kind","")'="label-value" {
                        if $isobject(result.layout) { set previous=result.layout }
                        elseif result.columns.%Size()>1 { set previous="" }
                    }
                    if table.status="accepted" set accepted=accepted+1
                } else {
                    set table.reason=mapped.Error, previous=""
                }
                if table.status="review" set rejected=rejected+1
                do tables.%Push(table)
            }
            do outputPages.%Push({"page":(page.page),"tables":(tables)})
        }
        set data={"mode":"table-preview","engine":"deterministic-v1","filename":(request.Filename),"laboratoryName":(definition.laboratoryName),"documentDefinitionName":(definition.name),"definitionId":(definition.id),"definitionVersion":(definition.version),"acceptedTables":(accepted),"reviewTables":(rejected),"pages":(outputPages),"trace":{"requestId":(request.RequestId),"interopSessionId":(..%SessionId),"tableSessions":(sessions)}}
        do data.%Set("timing",{"ocrMs":(ocr.DurationMs),"extractionMs":(extractionMs),"totalMs":(##class(App.Interop.PythonProcessor).Clock()-started)})
        do data.%Set("firstPageInformation",firstPageInformation)
        do data.%Set("analysisId",request.AnalysisId)
        if discovery {
            set data.mode="discovery"
            do data.%Set("discovery",classification.%Get("discovery",{"status":"recognized","tableCount":(definition.tableTypes.%Size())}))
        }
        set fhirConfiguration=definition.%Get("fhirMapping")
        set fullExtraction=(request.Stage="document-extraction"), step1Ms=##class(App.Interop.PythonProcessor).Clock()-started, fhirMs=0
        if 'discovery,(fullExtraction||($isobject(fhirConfiguration)&&fhirConfiguration.enabled)) {
            do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"fhir")
            set input=..Stage(request,"fhir-automatic"), input.Payload=##class(%Stream.GlobalCharacter).%New()
            if fullExtraction set input.Stage="fhir-final"
            set fhirInput={"analysis":(data)}
            do fhirInput.%ToJSON(input.Payload)
            set fhirStarted=##class(App.Interop.PythonProcessor).Clock()
            $$$ThrowOnError(..SendRequestSync("FHIR Mapping Process",input,.fhirResponse,300,"Configured FHIR R5 mapping"))
            set fhirMs=##class(App.Interop.PythonProcessor).Clock()-fhirStarted
            if fhirResponse.Success { do data.%Set("fhir",{}.%FromJSON(##class(App.Interop.Streams).Read(fhirResponse.Payload))) }
            else { do data.%Set("fhir",{"status":"blocked","error":(fhirResponse.Error),"resourceCount":0,"bundle":{"resourceType":"Bundle","type":"collection"}}) }
        }
        if fullExtraction {
            set data.mode="extraction"
            do data.%Set("steps",[{"id":"tables","status":"completed","durationMs":(step1Ms),"tableCount":(accepted+rejected)},{"id":"bundle","status":(data.fhir.status),"durationMs":(fhirMs),"resourceCount":(data.fhir.resourceCount)}])
            do data.timing.%Set("normalizationMs",step1Ms), data.timing.%Set("fhirMs",fhirMs)
        }
        do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"completed")
        do data.timing.%Set("totalMs",##class(App.Interop.PythonProcessor).Clock()-started)
        set response.Success=1, response.HttpStatus=200, response.Payload=##class(%Stream.GlobalCharacter).%New()
        do data.%ToJSON(response.Payload)
    } catch ex {
        do ##class(App.Interop.PreviewProgress).Update(request.AnalysisId,"failed")
        do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"table-preview"})
    }
    quit $$$OK
}

Method Stage(source As App.Interop.Message.Request, stage As %String) As App.Interop.Message.Request
{
    set request=##class(App.Interop.Message.Request).%New()
    set request.RequestId=source.RequestId, request.Filename=source.Filename, request.Stage=stage
    set request.InteropSessionId=..%SessionId
    quit request
}
}



