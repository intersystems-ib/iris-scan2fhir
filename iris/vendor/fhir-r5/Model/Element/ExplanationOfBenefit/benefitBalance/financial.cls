Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.benefitBalance.financial Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property allowedUnsignedInt As %Integer(XMLNAME = "allowedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");
Property allowedString As %String(MAXLEN = 1000000, XMLNAME = "allowedString", XMLPROJECTION = "ATTRIBUTE");
Property allowedMoney As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "allowedMoney", XMLPROJECTION = "ELEMENT");
Property usedUnsignedInt As %Integer(XMLNAME = "usedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");
Property usedMoney As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "usedMoney", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.benefitBalance.financial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.benefitBalance.financial";

}
