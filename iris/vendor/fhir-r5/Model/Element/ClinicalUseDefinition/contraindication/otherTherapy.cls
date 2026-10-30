Class Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.contraindication.otherTherapy Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property relationshipType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "relationshipType", XMLPROJECTION = "ELEMENT") [ Required ];
Property treatment As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "treatment", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalUseDefinition.contraindication.otherTherapy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalUseDefinition.contraindication.otherTherapy";

}
