Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.indicationGuideline.dosingGuideline Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property treatmentIntent As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "treatmentIntent", XMLPROJECTION = "ELEMENT");
Property dosage As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.indicationGuideline.dosingGuideline.dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");
Property administrationTreatment As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "administrationTreatment", XMLPROJECTION = "ELEMENT");
Property patientCharacteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.indicationGuideline.dosingGuideline.patientCharacteristic(XMLNAME = "patientCharacteristic", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.indicationGuideline.dosingGuideline";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.indicationGuideline.dosingGuideline";

}
