Class Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase.testData Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property content As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "content", XMLPROJECTION = "ELEMENT");
Property sourceString As %String(MAXLEN = 1000000, XMLNAME = "sourceString", XMLPROJECTION = "ATTRIBUTE");
Property sourceReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "sourceReference", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestPlan.testCase.testData";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestPlan.testCase.testData";

}
