Class Spain.FHIR.DTL.vR5.Model.Element.TestScript.setup.action.operation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE");
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property accept As %String(MAXLEN = 1000000, XMLNAME = "accept", XMLPROJECTION = "ATTRIBUTE");
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");
Property destination As %Integer(XMLNAME = "destination", XMLPROJECTION = "ATTRIBUTE");
Property encodeRequestUrl As %Boolean(XMLNAME = "encodeRequestUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property method As %String(MAXLEN = 1000000, XMLNAME = "method", XMLPROJECTION = "ATTRIBUTE");
Property origin As %Integer(XMLNAME = "origin", XMLPROJECTION = "ATTRIBUTE");
Property params As %String(MAXLEN = 1000000, XMLNAME = "params", XMLPROJECTION = "ATTRIBUTE");
Property requestHeader As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.setup.action.operation.requestHeader(XMLNAME = "requestHeader", XMLPROJECTION = "ELEMENT");
Property requestId As %String(MAXLEN = 1000000, XMLNAME = "requestId", XMLPROJECTION = "ATTRIBUTE");
Property responseId As %String(MAXLEN = 1000000, XMLNAME = "responseId", XMLPROJECTION = "ATTRIBUTE");
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");
Property targetId As %String(MAXLEN = 1000000, XMLNAME = "targetId", XMLPROJECTION = "ATTRIBUTE");
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.setup.action.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.setup.action.operation";

}
