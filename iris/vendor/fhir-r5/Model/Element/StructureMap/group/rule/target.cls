Class Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.target Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property context As %String(MAXLEN = 1000000, XMLNAME = "context", XMLPROJECTION = "ATTRIBUTE");
Property element As %String(MAXLEN = 1000000, XMLNAME = "element", XMLPROJECTION = "ATTRIBUTE");
Property variable As %String(MAXLEN = 1000000, XMLNAME = "variable", XMLPROJECTION = "ATTRIBUTE");
Property listMode As list Of %String(MAXLEN = 1000000, XMLNAME = "listMode", XMLPROJECTION = "ELEMENT");
Property listRuleId As %String(MAXLEN = 1000000, XMLNAME = "listRuleId", XMLPROJECTION = "ATTRIBUTE");
Property transform As %String(MAXLEN = 1000000, XMLNAME = "transform", XMLPROJECTION = "ATTRIBUTE");
Property parameter As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.target.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.target";

}

