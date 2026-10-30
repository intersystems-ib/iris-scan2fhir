Class Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE");
Property prefix As %String(MAXLEN = 1000000, XMLNAME = "prefix", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property textEquivalent As %String(MAXLEN = 1000000, XMLNAME = "textEquivalent", XMLPROJECTION = "ATTRIBUTE");
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property documentation As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "documentation", XMLPROJECTION = "ELEMENT");
Property goal As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "goal", XMLPROJECTION = "ELEMENT");
Property condition As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.condition(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");
Property input As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT");
Property output As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.output(XMLNAME = "output", XMLPROJECTION = "ELEMENT");
Property relatedAction As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.relatedAction(XMLNAME = "relatedAction", XMLPROJECTION = "ELEMENT");
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");
Property timingAge As Spain.FHIR.DTL.vR5.Model.Datatype.Age(XMLNAME = "timingAge", XMLPROJECTION = "ELEMENT");
Property timingPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");
Property timingDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "timingDuration", XMLPROJECTION = "ELEMENT");
Property timingRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "timingRange", XMLPROJECTION = "ELEMENT");
Property timingTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");
Property location As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property groupingBehavior As %String(MAXLEN = 1000000, XMLNAME = "groupingBehavior", XMLPROJECTION = "ATTRIBUTE");
Property selectionBehavior As %String(MAXLEN = 1000000, XMLNAME = "selectionBehavior", XMLPROJECTION = "ATTRIBUTE");
Property requiredBehavior As %String(MAXLEN = 1000000, XMLNAME = "requiredBehavior", XMLPROJECTION = "ATTRIBUTE");
Property precheckBehavior As %String(MAXLEN = 1000000, XMLNAME = "precheckBehavior", XMLPROJECTION = "ATTRIBUTE");
Property cardinalityBehavior As %String(MAXLEN = 1000000, XMLNAME = "cardinalityBehavior", XMLPROJECTION = "ATTRIBUTE");
Property resource As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");
Property definitionCanonical As %String(MAXLEN = 1000000, XMLNAME = "definitionCanonical", XMLPROJECTION = "ATTRIBUTE");
Property definitionUri As %String(MAXLEN = 1000000, XMLNAME = "definitionUri", XMLPROJECTION = "ATTRIBUTE");
Property transform As %String(MAXLEN = 1000000, XMLNAME = "transform", XMLPROJECTION = "ATTRIBUTE");
Property dynamicValue As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action.dynamicValue(XMLNAME = "dynamicValue", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RequestOrchestration.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RequestOrchestration.action";

}
