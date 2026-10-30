Class Spain.FHIR.DTL.vR5.Model.Resource.TestReport Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property testScript As %String(MAXLEN = 1000000, XMLNAME = "testScript", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property result As %String(MAXLEN = 1000000, XMLNAME = "result", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property score As %Numeric(XMLNAME = "score", XMLPROJECTION = "ATTRIBUTE");
Property tester As %String(MAXLEN = 1000000, XMLNAME = "tester", XMLPROJECTION = "ATTRIBUTE");
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.TestReport.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");
Property setup As Spain.FHIR.DTL.vR5.Model.Element.TestReport.setup(XMLNAME = "setup", XMLPROJECTION = "ELEMENT");
Property test As list Of Spain.FHIR.DTL.vR5.Model.Element.TestReport.test(XMLNAME = "test", XMLPROJECTION = "ELEMENT");
Property teardown As Spain.FHIR.DTL.vR5.Model.Element.TestReport.teardown(XMLNAME = "teardown", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport";

}
