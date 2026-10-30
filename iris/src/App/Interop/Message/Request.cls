/// Immutable stage input retained by the interoperability message bank.
/// Preserve property order, including legacy fields, to read historical persisted message bodies.
Class App.Interop.Message.Request Extends Ens.Request
{
Property RequestId As %String(MAXLEN = 36);
Property Stage As %String;
Property Filename As %String(MAXLEN = 255);
Property Username As %String;
Property PDF As %Stream.GlobalBinary;
Property Pages As %Stream.GlobalCharacter;
Property Payload As %Stream.GlobalCharacter;
// Reserved fields retain compatibility with historical message-bank records.
Property SystemPrompt As %String(MAXLEN = "");
Property Prompt As %String(MAXLEN = "");
Property PageNumber As %Integer;
Property InteropSessionId As %String;
Property ReportId As %String(MAXLEN = 36);
Property AISessionId As %String;
Property Classification As %Stream.GlobalCharacter;
Property AnalysisId As %String(MAXLEN = 36);
}


