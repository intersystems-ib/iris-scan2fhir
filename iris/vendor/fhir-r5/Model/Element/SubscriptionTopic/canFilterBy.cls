Class Spain.FHIR.DTL.vR5.Model.Element.SubscriptionTopic.canFilterBy Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE");
Property filterParameter As %String(MAXLEN = 1000000, XMLNAME = "filterParameter", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property filterDefinition As %String(MAXLEN = 1000000, XMLNAME = "filterDefinition", XMLPROJECTION = "ATTRIBUTE");
Property comparator As list Of %String(MAXLEN = 1000000, XMLNAME = "comparator", XMLPROJECTION = "ELEMENT");
Property modifier As list Of %String(MAXLEN = 1000000, XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubscriptionTopic.canFilterBy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubscriptionTopic.canFilterBy";

}

