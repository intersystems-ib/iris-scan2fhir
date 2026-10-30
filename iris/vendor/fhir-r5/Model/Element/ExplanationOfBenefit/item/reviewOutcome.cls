Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.item.reviewOutcome Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property decision As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property preAuthRef As %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ATTRIBUTE");
Property preAuthPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "preAuthPeriod", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.item.reviewOutcome";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.item.reviewOutcome";

}
