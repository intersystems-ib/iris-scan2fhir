Class Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry.request Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property method As %String(MAXLEN = 1000000, XMLNAME = "method", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property ifNoneMatch As %String(MAXLEN = 1000000, XMLNAME = "ifNoneMatch", XMLPROJECTION = "ATTRIBUTE");
Property ifModifiedSince As %String(MAXLEN = 1000000, XMLNAME = "ifModifiedSince", XMLPROJECTION = "ATTRIBUTE");
Property ifMatch As %String(MAXLEN = 1000000, XMLNAME = "ifMatch", XMLPROJECTION = "ATTRIBUTE");
Property ifNoneExist As %String(MAXLEN = 1000000, XMLNAME = "ifNoneExist", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry.request";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry.request";

}
