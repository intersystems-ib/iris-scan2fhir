Class App.Interop.Streams Extends %RegisteredObject
{
ClassMethod Read(stream As %Stream.Object) As %String
{
    if '$isobject(stream) quit ""
    do stream.Rewind()
    quit stream.Read(stream.Size)
}
}
