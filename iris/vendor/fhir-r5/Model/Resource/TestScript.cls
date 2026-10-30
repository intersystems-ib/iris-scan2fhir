Class Spain.FHIR.DTL.vR5.Model.Resource.TestScript Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
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
Property origin As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.origin(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");
Property destination As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.destination(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");
Property metadata As Spain.FHIR.DTL.vR5.Model.Element.TestScript.metadata(XMLNAME = "metadata", XMLPROJECTION = "ELEMENT");
Property scope As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.scope(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");
Property fixture As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.fixture(XMLNAME = "fixture", XMLPROJECTION = "ELEMENT");
Property profile As list Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");
Property variable As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.variable(XMLNAME = "variable", XMLPROJECTION = "ELEMENT");
Property setup As Spain.FHIR.DTL.vR5.Model.Element.TestScript.setup(XMLNAME = "setup", XMLPROJECTION = "ELEMENT");
Property test As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.test(XMLNAME = "test", XMLPROJECTION = "ELEMENT");
Property teardown As Spain.FHIR.DTL.vR5.Model.Element.TestScript.teardown(XMLNAME = "teardown", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript";

}

