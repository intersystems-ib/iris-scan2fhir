Class Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property classifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classifier", XMLPROJECTION = "ELEMENT");
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");
Property citation As %String(MAXLEN = 1000000, XMLNAME = "citation", XMLPROJECTION = "ATTRIBUTE");
Property document As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "document", XMLPROJECTION = "ELEMENT");
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE");
Property resourceReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "resourceReference", XMLPROJECTION = "ELEMENT");
Property publicationStatus As %String(MAXLEN = 1000000, XMLNAME = "publicationStatus", XMLPROJECTION = "ATTRIBUTE");
Property publicationDate As %String(MAXLEN = 1000000, XMLNAME = "publicationDate", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RelatedArtifact";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RelatedArtifact";

}
