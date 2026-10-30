Class Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.source Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property context As %String(MAXLEN = 1000000, XMLNAME = "context", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");
Property defaultValue As %String(MAXLEN = 1000000, XMLNAME = "defaultValue", XMLPROJECTION = "ATTRIBUTE");
Property element As %String(MAXLEN = 1000000, XMLNAME = "element", XMLPROJECTION = "ATTRIBUTE");
Property listMode As %String(MAXLEN = 1000000, XMLNAME = "listMode", XMLPROJECTION = "ATTRIBUTE");
Property variable As %String(MAXLEN = 1000000, XMLNAME = "variable", XMLPROJECTION = "ATTRIBUTE");
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");
Property check As %String(MAXLEN = 1000000, XMLNAME = "check", XMLPROJECTION = "ATTRIBUTE");
Property logMessage As %String(MAXLEN = 1000000, XMLNAME = "logMessage", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.source";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.source";

}
