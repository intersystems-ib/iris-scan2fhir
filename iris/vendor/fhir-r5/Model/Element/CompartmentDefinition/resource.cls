Class Spain.FHIR.DTL.vR5.Model.Element.CompartmentDefinition.resource Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property param As list Of %String(MAXLEN = 1000000, XMLNAME = "param", XMLPROJECTION = "ELEMENT");
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property startParam As %String(MAXLEN = 1000000, XMLNAME = "startParam", XMLPROJECTION = "ATTRIBUTE");
Property endParam As %String(MAXLEN = 1000000, XMLNAME = "endParam", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CompartmentDefinition.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CompartmentDefinition.resource";

}

