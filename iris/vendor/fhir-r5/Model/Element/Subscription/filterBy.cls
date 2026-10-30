Class Spain.FHIR.DTL.vR5.Model.Element.Subscription.filterBy Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property resourceType As %String(MAXLEN = 1000000, XMLNAME = "resourceType", XMLPROJECTION = "ATTRIBUTE");
Property filterParameter As %String(MAXLEN = 1000000, XMLNAME = "filterParameter", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property comparator As %String(MAXLEN = 1000000, XMLNAME = "comparator", XMLPROJECTION = "ATTRIBUTE");
Property modifier As %String(MAXLEN = 1000000, XMLNAME = "modifier", XMLPROJECTION = "ATTRIBUTE");
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Subscription.filterBy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Subscription.filterBy";

}
