Class Spain.FHIR.DTL.vR5.Model.Element.BodyStructure.includedStructure Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property structure As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "structure", XMLPROJECTION = "ELEMENT") [ Required ];
Property laterality As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "laterality", XMLPROJECTION = "ELEMENT");
Property bodyLandmarkOrientation As list Of Spain.FHIR.DTL.vR5.Model.Element.BodyStructure.includedStructure.bodyLandmarkOrientation(XMLNAME = "bodyLandmarkOrientation", XMLPROJECTION = "ELEMENT");
Property spatialReference As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "spatialReference", XMLPROJECTION = "ELEMENT");
Property qualifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "qualifier", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BodyStructure.includedStructure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BodyStructure.includedStructure";

}
