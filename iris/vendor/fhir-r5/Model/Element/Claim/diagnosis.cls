Class Spain.FHIR.DTL.vR5.Model.Element.Claim.diagnosis Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property diagnosisCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisCodeableConcept", XMLPROJECTION = "ELEMENT");
Property diagnosisReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "diagnosisReference", XMLPROJECTION = "ELEMENT");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property onAdmission As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "onAdmission", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.diagnosis";

}
