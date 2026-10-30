Class Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.publicationForm Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property publishedIn As Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.publicationForm.publishedIn(XMLNAME = "publishedIn", XMLPROJECTION = "ELEMENT");
Property citedMedium As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "citedMedium", XMLPROJECTION = "ELEMENT");
Property volume As %String(MAXLEN = 1000000, XMLNAME = "volume", XMLPROJECTION = "ATTRIBUTE");
Property issue As %String(MAXLEN = 1000000, XMLNAME = "issue", XMLPROJECTION = "ATTRIBUTE");
Property articleDate As %String(MAXLEN = 1000000, XMLNAME = "articleDate", XMLPROJECTION = "ATTRIBUTE");
Property publicationDateText As %String(MAXLEN = 1000000, XMLNAME = "publicationDateText", XMLPROJECTION = "ATTRIBUTE");
Property publicationDateSeason As %String(MAXLEN = 1000000, XMLNAME = "publicationDateSeason", XMLPROJECTION = "ATTRIBUTE");
Property lastRevisionDate As %String(MAXLEN = 1000000, XMLNAME = "lastRevisionDate", XMLPROJECTION = "ATTRIBUTE");
Property language As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "language", XMLPROJECTION = "ELEMENT");
Property accessionNumber As %String(MAXLEN = 1000000, XMLNAME = "accessionNumber", XMLPROJECTION = "ATTRIBUTE");
Property pageString As %String(MAXLEN = 1000000, XMLNAME = "pageString", XMLPROJECTION = "ATTRIBUTE");
Property firstPage As %String(MAXLEN = 1000000, XMLNAME = "firstPage", XMLPROJECTION = "ATTRIBUTE");
Property lastPage As %String(MAXLEN = 1000000, XMLNAME = "lastPage", XMLPROJECTION = "ATTRIBUTE");
Property pageCount As %String(MAXLEN = 1000000, XMLNAME = "pageCount", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Citation.citedArtifact.publicationForm";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Citation.citedArtifact.publicationForm";

}
