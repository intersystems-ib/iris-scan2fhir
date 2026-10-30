Class Spain.FHIR.DTL.vR5.Model.Resource.Subscription Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property topic As %String(MAXLEN = 1000000, XMLNAME = "topic", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");
Property managingEntity As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "managingEntity", XMLPROJECTION = "ELEMENT");
Property reason As %String(MAXLEN = 1000000, XMLNAME = "reason", XMLPROJECTION = "ATTRIBUTE");
Property filterBy As list Of Spain.FHIR.DTL.vR5.Model.Element.Subscription.filterBy(XMLNAME = "filterBy", XMLPROJECTION = "ELEMENT");
Property channelType As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "channelType", XMLPROJECTION = "ELEMENT") [ Required ];
Property endpoint As %String(MAXLEN = 1000000, XMLNAME = "endpoint", XMLPROJECTION = "ATTRIBUTE");
Property parameter As list Of Spain.FHIR.DTL.vR5.Model.Element.Subscription.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");
Property heartbeatPeriod As %Integer(XMLNAME = "heartbeatPeriod", XMLPROJECTION = "ATTRIBUTE");
Property timeout As %Integer(XMLNAME = "timeout", XMLPROJECTION = "ATTRIBUTE");
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");
Property content As %String(MAXLEN = 1000000, XMLNAME = "content", XMLPROJECTION = "ATTRIBUTE");
Property maxCount As %Integer(XMLNAME = "maxCount", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Subscription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Subscription";

}
