Class Spain.FHIR.DTL.vR5.Model.Resource.ImplementationGuide Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmString As %String(MAXLEN = 1000000, XMLNAME = "versionAlgorithmString", XMLPROJECTION = "ATTRIBUTE");
Property versionAlgorithmCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "versionAlgorithmCoding", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];
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
Property packageId As %String(MAXLEN = 1000000, XMLNAME = "packageId", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property license As %String(MAXLEN = 1000000, XMLNAME = "license", XMLPROJECTION = "ATTRIBUTE");
Property fhirVersion As list Of %String(MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ELEMENT") [ Required ];
Property dependsOn As list Of Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.dependsOn(XMLNAME = "dependsOn", XMLPROJECTION = "ELEMENT");
Property global As list Of Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.global(XMLNAME = "global", XMLPROJECTION = "ELEMENT");
Property definition As Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.definition(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
Property manifest As Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.manifest(XMLNAME = "manifest", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide";

}

