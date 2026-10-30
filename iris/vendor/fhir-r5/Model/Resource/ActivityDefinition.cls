Class Spain.FHIR.DTL.vR5.Model.Resource.ActivityDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property subjectCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");
Property subjectReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");
Property subjectCanonical As %String(MAXLEN = 1000000, XMLNAME = "subjectCanonical", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property jurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property copyrightLabel As %String(MAXLEN = 1000000, XMLNAME = "copyrightLabel", XMLPROJECTION = "ATTRIBUTE");
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");
Property effectivePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");
Property topic As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");
Property author As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property editor As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "editor", XMLPROJECTION = "ELEMENT");
Property reviewer As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "reviewer", XMLPROJECTION = "ELEMENT");
Property endorser As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "endorser", XMLPROJECTION = "ELEMENT");
Property relatedArtifact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");
Property library As list Of %String(MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE");
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE");
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");
Property timingTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");
Property timingAge As Spain.FHIR.DTL.vR5.Model.Datatype.Age(XMLNAME = "timingAge", XMLPROJECTION = "ELEMENT");
Property timingRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "timingRange", XMLPROJECTION = "ELEMENT");
Property timingDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "timingDuration", XMLPROJECTION = "ELEMENT");
Property asNeededBoolean As %Boolean(XMLNAME = "asNeededBoolean", XMLPROJECTION = "ATTRIBUTE");
Property asNeededCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "asNeededCodeableConcept", XMLPROJECTION = "ELEMENT");
Property location As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.ActivityDefinition.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");
Property productReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "productReference", XMLPROJECTION = "ELEMENT");
Property productCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productCodeableConcept", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property dosage As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");
Property bodySite As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property specimenRequirement As list Of %String(MAXLEN = 1000000, XMLNAME = "specimenRequirement", XMLPROJECTION = "ELEMENT");
Property observationRequirement As list Of %String(MAXLEN = 1000000, XMLNAME = "observationRequirement", XMLPROJECTION = "ELEMENT");
Property observationResultRequirement As list Of %String(MAXLEN = 1000000, XMLNAME = "observationResultRequirement", XMLPROJECTION = "ELEMENT");
Property transform As %String(MAXLEN = 1000000, XMLNAME = "transform", XMLPROJECTION = "ATTRIBUTE");
Property dynamicValue As list Of Spain.FHIR.DTL.vR5.Model.Element.ActivityDefinition.dynamicValue(XMLNAME = "dynamicValue", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ActivityDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ActivityDefinition";

}

