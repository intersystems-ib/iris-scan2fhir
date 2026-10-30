Class Spain.FHIR.DTL.vR5.Model.Resource.SpecimenDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property derivedFromCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "derivedFromCanonical", XMLPROJECTION = "ELEMENT");
Property derivedFromUri As list Of %String(MAXLEN = 1000000, XMLNAME = "derivedFromUri", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property subjectCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");
Property subjectReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");
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
Property typeCollected As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "typeCollected", XMLPROJECTION = "ELEMENT");
Property patientPreparation As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "patientPreparation", XMLPROJECTION = "ELEMENT");
Property timeAspect As %String(MAXLEN = 1000000, XMLNAME = "timeAspect", XMLPROJECTION = "ATTRIBUTE");
Property collection As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");
Property typeTested As list Of Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested(XMLNAME = "typeTested", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition";

}

