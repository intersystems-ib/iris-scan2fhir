Class Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry.response Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property location As %String(MAXLEN = 1000000, XMLNAME = "location", XMLPROJECTION = "ATTRIBUTE");
Property etag As %String(MAXLEN = 1000000, XMLNAME = "etag", XMLPROJECTION = "ATTRIBUTE");
Property lastModified As %String(MAXLEN = 1000000, XMLNAME = "lastModified", XMLPROJECTION = "ATTRIBUTE");
Property outcome As HS.FHIR.DTL.vR4.Model.Base.Resource(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry.response";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry.response";

}
