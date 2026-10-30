Class Spain.FHIR.DTL.vR5.Model.Element.SubscriptionTopic.notificationShape Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property include As list Of %String(MAXLEN = 1000000, XMLNAME = "include", XMLPROJECTION = "ELEMENT");
Property revInclude As list Of %String(MAXLEN = 1000000, XMLNAME = "revInclude", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubscriptionTopic.notificationShape";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubscriptionTopic.notificationShape";

}

