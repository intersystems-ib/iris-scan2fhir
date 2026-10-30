Class Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.interaction Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property interactant As list Of Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.interaction.interactant(XMLNAME = "interactant", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property effect As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "effect", XMLPROJECTION = "ELEMENT");
Property incidence As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "incidence", XMLPROJECTION = "ELEMENT");
Property management As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "management", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalUseDefinition.interaction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalUseDefinition.interaction";

}
