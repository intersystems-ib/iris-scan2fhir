Class Spain.FHIR.DTL.vR5.Model.Resource.DetectedIssue Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property identifiedDateTime As %String(MAXLEN = 1000000, XMLNAME = "identifiedDateTime", XMLPROJECTION = "ATTRIBUTE");
Property identifiedPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "identifiedPeriod", XMLPROJECTION = "ELEMENT");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property implicated As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "implicated", XMLPROJECTION = "ELEMENT");
Property evidence As list Of Spain.FHIR.DTL.vR5.Model.Element.DetectedIssue.evidence(XMLNAME = "evidence", XMLPROJECTION = "ELEMENT");
Property detail As %String(MAXLEN = 1000000, XMLNAME = "detail", XMLPROJECTION = "ATTRIBUTE");
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");
Property mitigation As list Of Spain.FHIR.DTL.vR5.Model.Element.DetectedIssue.mitigation(XMLNAME = "mitigation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DetectedIssue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DetectedIssue";

}
