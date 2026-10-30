Class Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property relatedIdentifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "relatedIdentifier", XMLPROJECTION = "ELEMENT");
Property dateAccessed As %String(MAXLEN = 1000000, XMLNAME = "dateAccessed", XMLPROJECTION = "ATTRIBUTE");
Property version As Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property currentState As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "currentState", XMLPROJECTION = "ELEMENT");
Property statusDate As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.statusDate(XMLNAME = "statusDate", XMLPROJECTION = "ELEMENT");
Property title As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.title(XMLNAME = "title", XMLPROJECTION = "ELEMENT");
Property abstract As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.abstract(XMLNAME = "abstract", XMLPROJECTION = "ELEMENT");
Property part As Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.part(XMLNAME = "part", XMLPROJECTION = "ELEMENT");
Property relatesTo As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.relatesTo(XMLNAME = "relatesTo", XMLPROJECTION = "ELEMENT");
Property publicationForm As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.publicationForm(XMLNAME = "publicationForm", XMLPROJECTION = "ELEMENT");
Property webLocation As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.webLocation(XMLNAME = "webLocation", XMLPROJECTION = "ELEMENT");
Property classification As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.classification(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");
Property contributorship As Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.contributorship(XMLNAME = "contributorship", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Citation.citedArtifact";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Citation.citedArtifact";

}
