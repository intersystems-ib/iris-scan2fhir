Class Spain.FHIR.DTL.vR5.Model.Resource.TerminologyCapabilities Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property software As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.software(XMLNAME = "software", XMLPROJECTION = "ELEMENT");
Property implementation As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.implementation(XMLNAME = "implementation", XMLPROJECTION = "ELEMENT");
Property lockedDate As %Boolean(XMLNAME = "lockedDate", XMLPROJECTION = "ATTRIBUTE");
Property codeSystem As list Of Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.codeSystem(XMLNAME = "codeSystem", XMLPROJECTION = "ELEMENT");
Property expansion As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.expansion(XMLNAME = "expansion", XMLPROJECTION = "ELEMENT");
Property codeSearch As %String(MAXLEN = 1000000, XMLNAME = "codeSearch", XMLPROJECTION = "ATTRIBUTE");
Property validateCode As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.validateCode(XMLNAME = "validateCode", XMLPROJECTION = "ELEMENT");
Property translation As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.translation(XMLNAME = "translation", XMLPROJECTION = "ELEMENT");
Property closure As Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.closure(XMLNAME = "closure", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities";

}
