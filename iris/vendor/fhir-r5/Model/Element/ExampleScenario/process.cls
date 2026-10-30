Class Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property preConditions As %String(MAXLEN = 1000000, XMLNAME = "preConditions", XMLPROJECTION = "ATTRIBUTE");
Property postConditions As %String(MAXLEN = 1000000, XMLNAME = "postConditions", XMLPROJECTION = "ATTRIBUTE");
Property step As list Of Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process.step(XMLNAME = "step", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process";

}
