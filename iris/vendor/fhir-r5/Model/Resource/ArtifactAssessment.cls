Class Spain.FHIR.DTL.vR5.Model.Resource.ArtifactAssessment Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property citeAsReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "citeAsReference", XMLPROJECTION = "ELEMENT");
Property citeAsMarkdown As %String(MAXLEN = 1000000, XMLNAME = "citeAsMarkdown", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");
Property artifactReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "artifactReference", XMLPROJECTION = "ELEMENT");
Property artifactCanonical As %String(MAXLEN = 1000000, XMLNAME = "artifactCanonical", XMLPROJECTION = "ATTRIBUTE");
Property artifactUri As %String(MAXLEN = 1000000, XMLNAME = "artifactUri", XMLPROJECTION = "ATTRIBUTE");
Property content As list Of Spain.FHIR.DTL.vR5.Model.Element.ArtifactAssessment.content(XMLNAME = "content", XMLPROJECTION = "ELEMENT");
Property workflowStatus As %String(MAXLEN = 1000000, XMLNAME = "workflowStatus", XMLPROJECTION = "ATTRIBUTE");
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ArtifactAssessment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ArtifactAssessment";

}
