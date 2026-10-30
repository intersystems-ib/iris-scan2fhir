Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.item.adjudication Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];
Property reason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.item.adjudication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.item.adjudication";

}
