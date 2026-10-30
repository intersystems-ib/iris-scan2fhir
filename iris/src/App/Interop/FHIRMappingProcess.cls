Include %occStatus
Class App.Interop.FHIRMappingProcess Extends Ens.BusinessProcess
{
Method OnRequest(request As App.Interop.Message.Request, Output response As App.Interop.Message.Response) As %Status
{
    set response=##class(App.Interop.Message.Response).%New(), response.RequestId=request.RequestId, response.InteropSessionId=..%SessionId
    try {
        set payload={}.%FromJSON(##class(App.Interop.Streams).Read(request.Payload))
        if request.Stage="fhir-preview" {
            set id=payload.%Get("analysisId","")
            if '##class(App.REST.Api).ValidAnalysisId(id) { set response.HttpStatus=422, response.Error="Identificador de análisis no válido." return $$$OK }
            set saved=##class(App.Interop.PreviewProgress).Result(id)
            if '$isobject(saved) { set response.HttpStatus=410, response.Error="El análisis no está disponible. Vuelva a analizar el PDF." return $$$OK }
            set analysis={}.%FromJSON(##class(App.Interop.Streams).Read(saved))
        } else { set analysis=payload.analysis }
        set definition=##class(App.Catalog.Repository).Definition(analysis.definitionId)
        if '$isobject(definition) { set response.HttpStatus=422, response.Error="La definición fijada por el análisis no está disponible." return $$$OK }
        set configuration=payload.%Get("configuration",definition.%Get("fhirMapping",{"enabled":false,"rules":[]}))
        set compiled=0, plan=""
        if (request.Stage="fhir-final")||((request.Stage="fhir-preview")&&('payload.%IsDefined("configuration"))) {
            set input=##class(App.Interop.Message.Request).%New(), input.RequestId=request.RequestId, input.Stage="fhir-plan", input.Payload=##class(%Stream.GlobalCharacter).%New()
            set planInput={"analysis":(analysis),"definition":(definition)}
            do planInput.%ToJSON(input.Payload)
            $$$ThrowOnError(..SendRequestSync("FHIR Mapping Operation",input,.planned,120,"Compile the meaning of document rows and columns"))
            if 'planned.Success { set response=planned return $$$OK }
            set plan={}.%FromJSON(##class(App.Interop.Streams).Read(planned.Payload)), configuration=plan.configuration, compiled=1
        }
        set input=##class(App.Interop.Message.Request).%New(), input.RequestId=request.RequestId, input.Stage="fhir-transform", input.Payload=##class(%Stream.GlobalCharacter).%New()
        set packet={"analysis":(analysis),"definition":(definition),"configuration":(configuration)}
        do packet.%ToJSON(input.Payload)
        if compiled, configuration.rules.%Size()=0 {
            set mapped=##class(App.Interop.Message.Response).%New(), mapped.RequestId=request.RequestId, mapped.Success=1, mapped.HttpStatus=200, mapped.Payload=##class(%Stream.GlobalCharacter).%New()
            set emptyResult={"bundle":{"resourceType":"Bundle","type":"collection"},"status":"blocked","resourceCount":0,"excluded":[],"provenance":[]}
            do emptyResult.%ToJSON(mapped.Payload)
        } else {
            $$$ThrowOnError(..SendRequestSync("FHIR Mapping Operation",input,.mapped,240,"Apply configured FHIR R5 assignments"))
        }
        set response=mapped, response.InteropSessionId=..%SessionId
        if response.Success {
            set result={}.%FromJSON(##class(App.Interop.Streams).Read(response.Payload))
            do result.%Set("trace",{"requestId":(request.RequestId),"interopSessionId":(..%SessionId),"sourceSessionId":(analysis.trace.interopSessionId)})
            do result.%Set("configurationSource",$select(payload.%IsDefined("configuration"):"draft",1:"saved"))
            if compiled {
                do result.%Set("plan",{"issues":(plan.issues),"defaults":(plan.defaults),"ruleCount":(plan.ruleCount),"source":(plan.source)})
                do result.%Set("configurationSource","document")
                if plan.issues.%Size()>0, result.status="ready" set result.status="partial"
            }
            do response.Payload.Clear(), result.%ToJSON(response.Payload)
        }
    } catch ex { do ##class(App.Interop.Diagnostics).Capture(response,ex.AsStatus(),{"stage":"fhir-mapping"}) }
    quit $$$OK
}
}
