Class Spain.FHIR.DTL.vR5.Model.Resource.CapabilityStatement Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property jurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property copyrightLabel As %String(MAXLEN = 1000000, XMLNAME = "copyrightLabel", XMLPROJECTION = "ATTRIBUTE");
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property instantiates As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");
Property imports As list Of %String(MAXLEN = 1000000, XMLNAME = "imports", XMLPROJECTION = "ELEMENT");
Property software As Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.software(XMLNAME = "software", XMLPROJECTION = "ELEMENT");
Property implementation As Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.implementation(XMLNAME = "implementation", XMLPROJECTION = "ELEMENT");
Property fhirVersion As %String(MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property format As list Of %String(MAXLEN = 1000000, XMLNAME = "format", XMLPROJECTION = "ELEMENT") [ Required ];
Property patchFormat As list Of %String(MAXLEN = 1000000, XMLNAME = "patchFormat", XMLPROJECTION = "ELEMENT");
Property acceptLanguage As list Of %String(MAXLEN = 1000000, XMLNAME = "acceptLanguage", XMLPROJECTION = "ELEMENT");
Property implementationGuide As list Of %String(MAXLEN = 1000000, XMLNAME = "implementationGuide", XMLPROJECTION = "ELEMENT");
Property rest As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest(XMLNAME = "rest", XMLPROJECTION = "ELEMENT");
Property messaging As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.messaging(XMLNAME = "messaging", XMLPROJECTION = "ELEMENT");
Property document As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.document(XMLNAME = "document", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement";

}

