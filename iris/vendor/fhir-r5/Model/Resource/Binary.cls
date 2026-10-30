Class Spain.FHIR.DTL.vR5.Model.Resource.Binary Extends HS.FHIR.DTL.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property securityContext As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "securityContext", XMLPROJECTION = "ELEMENT");
Property data As %String(MAXLEN = 1000000, XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Binary";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Binary";

}
