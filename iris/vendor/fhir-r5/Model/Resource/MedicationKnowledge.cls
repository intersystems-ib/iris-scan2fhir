Class Spain.FHIR.DTL.vR5.Model.Resource.MedicationKnowledge Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property intendedJurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "intendedJurisdiction", XMLPROJECTION = "ELEMENT");
Property name As list Of %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property relatedMedicationKnowledge As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.relatedMedicationKnowledge(XMLNAME = "relatedMedicationKnowledge", XMLPROJECTION = "ELEMENT");
Property associatedMedication As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "associatedMedication", XMLPROJECTION = "ELEMENT");
Property productType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productType", XMLPROJECTION = "ELEMENT");
Property monograph As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.monograph(XMLNAME = "monograph", XMLPROJECTION = "ELEMENT");
Property preparationInstruction As %String(MAXLEN = 1000000, XMLNAME = "preparationInstruction", XMLPROJECTION = "ATTRIBUTE");
Property cost As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.cost(XMLNAME = "cost", XMLPROJECTION = "ELEMENT");
Property monitoringProgram As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.monitoringProgram(XMLNAME = "monitoringProgram", XMLPROJECTION = "ELEMENT");
Property indicationGuideline As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.indicationGuideline(XMLNAME = "indicationGuideline", XMLPROJECTION = "ELEMENT");
Property medicineClassification As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.medicineClassification(XMLNAME = "medicineClassification", XMLPROJECTION = "ELEMENT");
Property packaging As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.packaging(XMLNAME = "packaging", XMLPROJECTION = "ELEMENT");
Property clinicalUseIssue As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "clinicalUseIssue", XMLPROJECTION = "ELEMENT");
Property storageGuideline As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.storageGuideline(XMLNAME = "storageGuideline", XMLPROJECTION = "ELEMENT");
Property regulatory As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.regulatory(XMLNAME = "regulatory", XMLPROJECTION = "ELEMENT");
Property definitional As Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.definitional(XMLNAME = "definitional", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge";

}

