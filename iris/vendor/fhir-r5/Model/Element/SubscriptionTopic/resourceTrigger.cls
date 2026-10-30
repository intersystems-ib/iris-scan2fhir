Class Spain.FHIR.DTL.vR5.Model.Element.SubscriptionTopic.resourceTrigger Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property supportedInteraction As list Of %String(MAXLEN = 1000000, XMLNAME = "supportedInteraction", XMLPROJECTION = "ELEMENT");
Property queryCriteria As Spain.FHIR.DTL.vR5.Model.Element.SubscriptionTopic.resourceTrigger.queryCriteria(XMLNAME = "queryCriteria", XMLPROJECTION = "ELEMENT");
Property fhirPathCriteria As %String(MAXLEN = 1000000, XMLNAME = "fhirPathCriteria", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubscriptionTopic.resourceTrigger";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubscriptionTopic.resourceTrigger";

}

