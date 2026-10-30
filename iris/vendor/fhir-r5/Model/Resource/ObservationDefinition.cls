Class Spain.FHIR.DTL.vR5.Model.Resource.ObservationDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmString As %String(MAXLEN = 1000000, XMLNAME = "versionAlgorithmString", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "versionAlgorithmCoding", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property jurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property copyrightLabel As %String(MAXLEN = 1000000, XMLNAME = "copyrightLabel", XMLPROJECTION = "ATTRIBUTE");
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");
Property effectivePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");
Property derivedFromCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "derivedFromCanonical", XMLPROJECTION = "ELEMENT");
Property derivedFromUri As list Of %String(MAXLEN = 1000000, XMLNAME = "derivedFromUri", XMLPROJECTION = "ELEMENT");
Property subject As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property performerType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property permittedDataType As list Of %String(MAXLEN = 1000000, XMLNAME = "permittedDataType", XMLPROJECTION = "ELEMENT");
Property multipleResultsAllowed As %Boolean(XMLNAME = "multipleResultsAllowed", XMLPROJECTION = "ATTRIBUTE");
Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property specimen As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");
Property device As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");
Property preferredReportName As %String(MAXLEN = 1000000, XMLNAME = "preferredReportName", XMLPROJECTION = "ATTRIBUTE");
Property permittedUnit As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "permittedUnit", XMLPROJECTION = "ELEMENT");
Property qualifiedValue As list Of Spain.FHIR.DTL.vR5.Model.Element.ObservationDefinition.qualifiedValue(XMLNAME = "qualifiedValue", XMLPROJECTION = "ELEMENT");
Property hasMember As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "hasMember", XMLPROJECTION = "ELEMENT");
Property component As list Of Spain.FHIR.DTL.vR5.Model.Element.ObservationDefinition.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition";

}

