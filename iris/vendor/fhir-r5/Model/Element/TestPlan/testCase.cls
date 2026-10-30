Class Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");
Property scope As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");
Property dependency As list Of Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase.dependency(XMLNAME = "dependency", XMLPROJECTION = "ELEMENT");
Property testRun As list Of Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase.testRun(XMLNAME = "testRun", XMLPROJECTION = "ELEMENT");
Property testData As list Of Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase.testData(XMLNAME = "testData", XMLPROJECTION = "ELEMENT");
Property assertion As list Of Spain.FHIR.DTL.vR5.Model.Element.TestPlan.testCase.assertion(XMLNAME = "assertion", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestPlan.testCase";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestPlan.testCase";

}
