Class Spain.FHIR.DTL.vR5.Model.Element.SubscriptionTopic.resourceTrigger.queryCriteria Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property previous As %String(MAXLEN = 1000000, XMLNAME = "previous", XMLPROJECTION = "ATTRIBUTE");
Property resultForCreate As %String(MAXLEN = 1000000, XMLNAME = "resultForCreate", XMLPROJECTION = "ATTRIBUTE");
Property current As %String(MAXLEN = 1000000, XMLNAME = "current", XMLPROJECTION = "ATTRIBUTE");
Property resultForDelete As %String(MAXLEN = 1000000, XMLNAME = "resultForDelete", XMLPROJECTION = "ATTRIBUTE");
Property requireBoth As %Boolean(XMLNAME = "requireBoth", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubscriptionTopic.resourceTrigger.queryCriteria";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubscriptionTopic.resourceTrigger.queryCriteria";

}
