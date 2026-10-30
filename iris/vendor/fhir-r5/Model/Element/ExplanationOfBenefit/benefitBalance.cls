Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.benefitBalance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];
Property excluded As %Boolean(XMLNAME = "excluded", XMLPROJECTION = "ATTRIBUTE");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property network As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property unit As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");
Property term As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");
Property financial As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.benefitBalance.financial(XMLNAME = "financial", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.benefitBalance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.benefitBalance";

}
