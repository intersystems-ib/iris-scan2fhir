Class Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.process.step.operation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property initiator As %String(MAXLEN = 1000000, XMLNAME = "initiator", XMLPROJECTION = "ATTRIBUTE");
Property receiver As %String(MAXLEN = 1000000, XMLNAME = "receiver", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property initiatorActive As %Boolean(XMLNAME = "initiatorActive", XMLPROJECTION = "ATTRIBUTE");
Property receiverActive As %Boolean(XMLNAME = "receiverActive", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process.step.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process.step.operation";

}
