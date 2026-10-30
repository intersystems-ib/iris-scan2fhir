Class Spain.FHIR.DTL.vR5.Model.Resource.SearchParameter Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property derivedFrom As %String(MAXLEN = 1000000, XMLNAME = "derivedFrom", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property jurisdiction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
Property copyrightLabel As %String(MAXLEN = 1000000, XMLNAME = "copyrightLabel", XMLPROJECTION = "ATTRIBUTE");
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property base As list Of %String(MAXLEN = 1000000, XMLNAME = "base", XMLPROJECTION = "ELEMENT") [ Required ];
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");
Property processingMode As %String(MAXLEN = 1000000, XMLNAME = "processingMode", XMLPROJECTION = "ATTRIBUTE");
Property constraint As %String(MAXLEN = 1000000, XMLNAME = "constraint", XMLPROJECTION = "ATTRIBUTE");
Property target As list Of %String(MAXLEN = 1000000, XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property multipleOr As %Boolean(XMLNAME = "multipleOr", XMLPROJECTION = "ATTRIBUTE");
Property multipleAnd As %Boolean(XMLNAME = "multipleAnd", XMLPROJECTION = "ATTRIBUTE");
Property comparator As list Of %String(MAXLEN = 1000000, XMLNAME = "comparator", XMLPROJECTION = "ELEMENT");
Property modifier As list Of %String(MAXLEN = 1000000, XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property chain As list Of %String(MAXLEN = 1000000, XMLNAME = "chain", XMLPROJECTION = "ELEMENT");
Property component As list Of Spain.FHIR.DTL.vR5.Model.Element.SearchParameter.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SearchParameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SearchParameter";

}

