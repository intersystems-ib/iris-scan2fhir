Class Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process.step Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property number As %String(MAXLEN = 1000000, XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");
Property workflow As %String(MAXLEN = 1000000, XMLNAME = "workflow", XMLPROJECTION = "ATTRIBUTE");
Property operation As Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process.step.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");
Property alternative As list Of Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process.step.alternative(XMLNAME = "alternative", XMLPROJECTION = "ELEMENT");
Property pause As %Boolean(XMLNAME = "pause", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process.step";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process.step";

}
