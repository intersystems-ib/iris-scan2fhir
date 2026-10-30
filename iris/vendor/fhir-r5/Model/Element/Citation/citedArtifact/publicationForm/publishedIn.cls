Class Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.publicationForm.publishedIn Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property publisher As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "publisher", XMLPROJECTION = "ELEMENT");
Property publisherLocation As %String(MAXLEN = 1000000, XMLNAME = "publisherLocation", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Citation.citedArtifact.publicationForm.publishedIn";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Citation.citedArtifact.publicationForm.publishedIn";

}
