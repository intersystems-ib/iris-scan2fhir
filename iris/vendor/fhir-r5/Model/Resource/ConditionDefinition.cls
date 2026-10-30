Class Spain.FHIR.DTL.vR5.Model.Resource.ConditionDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property jurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property severity As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "severity", XMLPROJECTION = "ELEMENT");
Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property stage As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "stage", XMLPROJECTION = "ELEMENT");
Property hasSeverity As %Boolean(XMLNAME = "hasSeverity", XMLPROJECTION = "ATTRIBUTE");
Property hasBodySite As %Boolean(XMLNAME = "hasBodySite", XMLPROJECTION = "ATTRIBUTE");
Property hasStage As %Boolean(XMLNAME = "hasStage", XMLPROJECTION = "ATTRIBUTE");
Property definition As list Of %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
Property observation As list Of Spain.FHIR.DTL.vR5.Model.Element.ConditionDefinition.observation(XMLNAME = "observation", XMLPROJECTION = "ELEMENT");
Property medication As list Of Spain.FHIR.DTL.vR5.Model.Element.ConditionDefinition.medication(XMLNAME = "medication", XMLPROJECTION = "ELEMENT");
Property precondition As list Of Spain.FHIR.DTL.vR5.Model.Element.ConditionDefinition.precondition(XMLNAME = "precondition", XMLPROJECTION = "ELEMENT");
Property team As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "team", XMLPROJECTION = "ELEMENT");
Property questionnaire As list Of Spain.FHIR.DTL.vR5.Model.Element.ConditionDefinition.questionnaire(XMLNAME = "questionnaire", XMLPROJECTION = "ELEMENT");
Property plan As list Of Spain.FHIR.DTL.vR5.Model.Element.ConditionDefinition.plan(XMLNAME = "plan", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConditionDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConditionDefinition";

}

