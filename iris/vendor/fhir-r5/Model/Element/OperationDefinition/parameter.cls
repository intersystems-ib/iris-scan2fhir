Class Spain.FHIR.DTL.vR5.Model.Element.OperationDefinition.parameter Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property scope As list Of %String(MAXLEN = 1000000, XMLNAME = "scope", XMLPROJECTION = "ELEMENT");
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");
Property allowedType As list Of %String(MAXLEN = 1000000, XMLNAME = "allowedType", XMLPROJECTION = "ELEMENT");
Property targetProfile As list Of %String(MAXLEN = 1000000, XMLNAME = "targetProfile", XMLPROJECTION = "ELEMENT");
Property searchType As %String(MAXLEN = 1000000, XMLNAME = "searchType", XMLPROJECTION = "ATTRIBUTE");
Property binding As Spain.FHIR.DTL.vR5.Model.Element.OperationDefinition.parameter.binding(XMLNAME = "binding", XMLPROJECTION = "ELEMENT");
Property referencedFrom As list Of Spain.FHIR.DTL.vR5.Model.Element.OperationDefinition.parameter.referencedFrom(XMLNAME = "referencedFrom", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.parameter";

}

