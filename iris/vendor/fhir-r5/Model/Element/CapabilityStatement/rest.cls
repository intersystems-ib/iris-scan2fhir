Class Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property security As Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.security(XMLNAME = "security", XMLPROJECTION = "ELEMENT");
Property resource As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");
Property interaction As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.interaction(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");
Property compartment As list Of %String(MAXLEN = 1000000, XMLNAME = "compartment", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest";

}

