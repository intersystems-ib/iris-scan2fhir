Include %occStatus

Class App.Interop.Diagnostics Extends %RegisteredObject
{
ClassMethod Sanitize(value As %String) As %String [ Language = python ]
{
    import os, re
    text = str(value)
    for name, secret in os.environ.items():
        if any(word in name.upper() for word in ('API_KEY', 'PASSWORD', 'SECRET', 'TOKEN')) and secret and len(secret) >= 4:
            text = text.replace(secret, '[REDACTED]')
    text = re.sub(r'(?i)(Bearer\s+|Basic\s+)[A-Za-z0-9._~+/=-]+', r'\1[REDACTED]', text)
    text = re.sub(r'''(?ix)((?:api[_-]?key|authorization|password|secret|access[_-]?token)["']?\s*[:=]\s*["']?)[^\s,"'<>}]+''', r'\1[REDACTED]', text)
    text = re.sub(r'(https?://)[^\s/@]+:[^\s/@]+@', r'\1[REDACTED]@', text)
    return text[:16000]
}

ClassMethod Capture(response As App.Interop.Message.Response, sc As %Status, context As %DynamicObject)
{
    set response.ErrorCode = $extract($system.Status.GetErrorCodes(sc),1,255)
    set response.ErrorStage = context.%Get("stage","interop-operation")
    set response.ErrorDetail = ..Sanitize($system.Status.GetErrorText(sc))
    do context.%Set("errorCode",response.ErrorCode)
    do context.%Set("detail",response.ErrorDetail)
    set response.Diagnostics = ##class(%Stream.GlobalCharacter).%New()
    do context.%ToJSON(response.Diagnostics)
    set component=$select(context.%Get("engine","")="indra":"Indra OCR",1:"IRIS Scan2FHIR")
    set response.Error = $extract(component_" ["_response.ErrorStage_", código "_response.ErrorCode_"]: "_response.ErrorDetail,1,4000)
}
}
