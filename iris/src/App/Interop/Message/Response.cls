Class App.Interop.Message.Response Extends Ens.Response
{
Property RequestId As %String(MAXLEN = 36);
Property Success As %Boolean [ InitialExpression = 0 ];
Property HttpStatus As %Integer [ InitialExpression = 500 ];
Property Error As %String(MAXLEN = 4000);
Property Payload As %Stream.GlobalCharacter;
Property InteropSessionId As %String;
// Reserved fields retain compatibility with historical message-bank records.
Property AISessionId As %String;
Property FinishReason As %String;
Property Usage As %String(MAXLEN = "");
// Append properties to retain the existing message-bank storage layout.
Property ErrorCode As %String(MAXLEN = 255);
Property ErrorStage As %String(MAXLEN = 128);
Property ErrorDetail As %String(MAXLEN = "");
Property Diagnostics As %Stream.GlobalCharacter;
Property DurationMs As %Double;
// Reserved historical timing slot; no active LLM integration.
Property LLMTimeMs As %Double;
}

