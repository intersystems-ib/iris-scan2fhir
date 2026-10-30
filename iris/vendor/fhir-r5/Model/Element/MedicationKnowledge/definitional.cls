Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.definitional Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property definition As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
Property doseForm As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "doseForm", XMLPROJECTION = "ELEMENT");
Property intendedRoute As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "intendedRoute", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.definitional.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property drugCharacteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.definitional.drugCharacteristic(XMLNAME = "drugCharacteristic", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.definitional";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.definitional";

}
