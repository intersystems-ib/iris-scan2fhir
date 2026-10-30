Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.regulatory Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property regulatoryAuthority As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "regulatoryAuthority", XMLPROJECTION = "ELEMENT") [ Required ];
Property substitution As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.regulatory.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");
Property schedule As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");
Property maxDispense As Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.regulatory.maxDispense(XMLNAME = "maxDispense", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.regulatory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.regulatory";

}
