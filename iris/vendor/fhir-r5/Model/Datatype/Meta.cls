Class Spain.FHIR.DTL.vR5.Model.Datatype.Meta Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE");
Property lastUpdated As %String(MAXLEN = 1000000, XMLNAME = "lastUpdated", XMLPROJECTION = "ATTRIBUTE");
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");
Property profile As list Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");
Property security As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "security", XMLPROJECTION = "ELEMENT");
Property tag As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "tag", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Meta";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Meta";

}

