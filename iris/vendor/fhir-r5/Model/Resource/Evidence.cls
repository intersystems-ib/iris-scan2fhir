Class Spain.FHIR.DTL.vR5.Model.Resource.Evidence Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmString As %String(MAXLEN = 1000000, XMLNAME = "versionAlgorithmString", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "versionAlgorithmCoding", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property citeAsReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "citeAsReference", XMLPROJECTION = "ELEMENT");
Property citeAsMarkdown As %String(MAXLEN = 1000000, XMLNAME = "citeAsMarkdown", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property author As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property editor As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "editor", XMLPROJECTION = "ELEMENT");
Property reviewer As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "reviewer", XMLPROJECTION = "ELEMENT");
Property endorser As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "endorser", XMLPROJECTION = "ELEMENT");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property copyrightLabel As %String(MAXLEN = 1000000, XMLNAME = "copyrightLabel", XMLPROJECTION = "ATTRIBUTE");
Property relatedArtifact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property assertion As %String(MAXLEN = 1000000, XMLNAME = "assertion", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property variableDefinition As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.variableDefinition(XMLNAME = "variableDefinition", XMLPROJECTION = "ELEMENT") [ Required ];
Property synthesisType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "synthesisType", XMLPROJECTION = "ELEMENT");
Property studyDesign As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "studyDesign", XMLPROJECTION = "ELEMENT");
Property statistic As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic(XMLNAME = "statistic", XMLPROJECTION = "ELEMENT");
Property certainty As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.certainty(XMLNAME = "certainty", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence";

}
