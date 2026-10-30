Class Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property fullUrl As %String(MAXLEN = 1000000, XMLNAME = "fullUrl", XMLPROJECTION = "ATTRIBUTE");
Property resource As HS.FHIR.DTL.vR4.Model.Base.Resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");
Property search As Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry.search(XMLNAME = "search", XMLPROJECTION = "ELEMENT");
Property request As Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry.request(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property response As Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry.response(XMLNAME = "response", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry";

}
