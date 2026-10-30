/// Short-lived progress metadata only. No PDF text or laboratory data is stored here.
Class App.Interop.PreviewProgress Extends %RegisteredObject
{
ClassMethod Begin(id As %String) As %Boolean
{
    lock +^App.TablePreviewProgress(id):1
    if '$test quit 0
    set now=##class(App.Interop.PythonProcessor).Clock(), key=""
    for {
        set key=$order(^App.TablePreviewProgress(key))
        quit:key=""
        set item={}.%FromJSON(^App.TablePreviewProgress(key))
        if (now<item.updatedMs)||((now-item.updatedMs)>3600000) kill ^App.TablePreviewProgress(key)
    }
    set ok='$data(^App.TablePreviewProgress(id))
    if ok set ^App.TablePreviewProgress(id)={"phase":"queued","startedMs":(now),"stageStartedMs":(now),"updatedMs":(now),"page":0,"table":"","variant":""}.%ToJSON()
    lock -^App.TablePreviewProgress(id)
    quit ok
}

ClassMethod Update(id As %String, phase As %String, page As %Integer = 0, tableId As %String = "", variant As %String = "", ocrMs As %Double = -1)
{
    if id="" quit
    if '$data(^App.TablePreviewProgress(id)) quit
    set item={}.%FromJSON(^App.TablePreviewProgress(id)), now=##class(App.Interop.PythonProcessor).Clock()
    set item.phase=phase, item.page=page, item.table=tableId, item.variant=variant, item.stageStartedMs=now, item.updatedMs=now
    if ocrMs>=0 do item.%Set("ocrMs",ocrMs)
    set ^App.TablePreviewProgress(id)=item.%ToJSON()
}

ClassMethod Read(id As %String) As %DynamicObject
{
    if '$data(^App.TablePreviewProgress(id)) quit ""
    set item={}.%FromJSON(^App.TablePreviewProgress(id)), now=##class(App.Interop.PythonProcessor).Clock()
    if (now<item.updatedMs)||((now-item.updatedMs)>3600000) quit ""
    set end=now
    if (item.phase="completed")||(item.phase="failed") set end=item.updatedMs
    set result={"phase":(item.phase),"page":(item.page),"table":(item.table),"variant":(item.variant),"elapsedMs":(end-item.startedMs),"stageElapsedMs":(end-item.stageStartedMs)}
    if item.%IsDefined("ocrMs") do result.%Set("ocrMs",item.ocrMs)
    quit result
}

ClassMethod SaveResult(id As %String, response As App.Interop.Message.Response) As %Status
{
    if '$data(^App.TablePreviewProgress(id)) quit 1
    set sc=response.%Save()
    if '$system.Status.IsOK(sc) quit sc
    set item={}.%FromJSON(^App.TablePreviewProgress(id))
    do item.%Set("responseId",response.%Id())
    set ^App.TablePreviewProgress(id)=item.%ToJSON()
    quit sc
}

ClassMethod Result(id As %String) As %Stream.Object
{
    if '$isobject(..Read(id)) quit ""
    set item={}.%FromJSON(^App.TablePreviewProgress(id))
    if 'item.%IsDefined("responseId") quit ""
    set response=##class(App.Interop.Message.Response).%OpenId(item.responseId)
    if '$isobject(response) quit ""
    quit response.Payload
}
}
