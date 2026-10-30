Class Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.coverage.benefit Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");
Property limit As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.coverage.benefit.limit(XMLNAME = "limit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage.benefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage.benefit";

}
