Class Spain.FHIR.DTL.vR5.Model.Element.TestScript.setup.action.assert Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property direction As %String(MAXLEN = 1000000, XMLNAME = "direction", XMLPROJECTION = "ATTRIBUTE");
Property compareToSourceId As %String(MAXLEN = 1000000, XMLNAME = "compareToSourceId", XMLPROJECTION = "ATTRIBUTE");
Property compareToSourceExpression As %String(MAXLEN = 1000000, XMLNAME = "compareToSourceExpression", XMLPROJECTION = "ATTRIBUTE");
Property compareToSourcePath As %String(MAXLEN = 1000000, XMLNAME = "compareToSourcePath", XMLPROJECTION = "ATTRIBUTE");
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");
Property defaultManualCompletion As %String(MAXLEN = 1000000, XMLNAME = "defaultManualCompletion", XMLPROJECTION = "ATTRIBUTE");
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");
Property headerField As %String(MAXLEN = 1000000, XMLNAME = "headerField", XMLPROJECTION = "ATTRIBUTE");
Property minimumId As %String(MAXLEN = 1000000, XMLNAME = "minimumId", XMLPROJECTION = "ATTRIBUTE");
Property navigationLinks As %Boolean(XMLNAME = "navigationLinks", XMLPROJECTION = "ATTRIBUTE");
Property operator As %String(MAXLEN = 1000000, XMLNAME = "operator", XMLPROJECTION = "ATTRIBUTE");
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");
Property requestMethod As %String(MAXLEN = 1000000, XMLNAME = "requestMethod", XMLPROJECTION = "ATTRIBUTE");
Property requestURL As %String(MAXLEN = 1000000, XMLNAME = "requestURL", XMLPROJECTION = "ATTRIBUTE");
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE");
Property response As %String(MAXLEN = 1000000, XMLNAME = "response", XMLPROJECTION = "ATTRIBUTE");
Property responseCode As %String(MAXLEN = 1000000, XMLNAME = "responseCode", XMLPROJECTION = "ATTRIBUTE");
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");
Property stopTestOnFail As %Boolean(XMLNAME = "stopTestOnFail", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property validateProfileId As %String(MAXLEN = 1000000, XMLNAME = "validateProfileId", XMLPROJECTION = "ATTRIBUTE");
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");
Property warningOnly As %Boolean(XMLNAME = "warningOnly", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property requirement As list Of Spain.FHIR.DTL.vR5.Model.Element.TestScript.setup.action.assert.requirement(XMLNAME = "requirement", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.setup.action.assert";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.setup.action.assert";

}
