Class Spain.FHIR.DTL.vR5.Model.Element.ArtifactAssessment.content Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property informationType As %String(MAXLEN = 1000000, XMLNAME = "informationType", XMLPROJECTION = "ATTRIBUTE");
Property summary As %String(MAXLEN = 1000000, XMLNAME = "summary", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property classifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classifier", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property path As list Of %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ELEMENT");
Property relatedArtifact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");
Property freeToShare As %Boolean(XMLNAME = "freeToShare", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ArtifactAssessment.content";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ArtifactAssessment.content";

}

