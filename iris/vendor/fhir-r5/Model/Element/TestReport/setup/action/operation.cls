Class Spain.FHIR.DTL.vR5.Model.Element.TestReport.setup.action.operation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property result As %String(MAXLEN = 1000000, XMLNAME = "result", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property message As %String(MAXLEN = 1000000, XMLNAME = "message", XMLPROJECTION = "ATTRIBUTE");
Property detail As %String(MAXLEN = 1000000, XMLNAME = "detail", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.setup.action.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.setup.action.operation";

}
