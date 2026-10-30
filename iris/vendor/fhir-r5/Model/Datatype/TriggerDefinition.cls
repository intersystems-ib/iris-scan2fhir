Class Spain.FHIR.DTL.vR5.Model.Datatype.TriggerDefinition Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property subscriptionTopic As %String(MAXLEN = 1000000, XMLNAME = "subscriptionTopic", XMLPROJECTION = "ATTRIBUTE");
Property timingTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");
Property timingReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "timingReference", XMLPROJECTION = "ELEMENT");
Property timingDate As %String(MAXLEN = 1000000, XMLNAME = "timingDate", XMLPROJECTION = "ATTRIBUTE");
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");
Property data As list Of Spain.FHIR.DTL.vR5.Model.Datatype.DataRequirement(XMLNAME = "data", XMLPROJECTION = "ELEMENT");
Property condition As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TriggerDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TriggerDefinition";

}
