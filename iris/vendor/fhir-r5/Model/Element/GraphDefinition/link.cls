Class Spain.FHIR.DTL.vR5.Model.Element.GraphDefinition.link Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");
Property sliceName As %String(MAXLEN = 1000000, XMLNAME = "sliceName", XMLPROJECTION = "ATTRIBUTE");
Property targetId As %String(MAXLEN = 1000000, XMLNAME = "targetId", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property params As %String(MAXLEN = 1000000, XMLNAME = "params", XMLPROJECTION = "ATTRIBUTE");
Property compartment As list Of Spain.FHIR.DTL.vR5.Model.Element.GraphDefinition.link.compartment(XMLNAME = "compartment", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GraphDefinition.link";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GraphDefinition.link";

}
