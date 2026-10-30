Class Spain.FHIR.DTL.vR5.Model.Datatype.Signature Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property when As %String(MAXLEN = 1000000, XMLNAME = "when", XMLPROJECTION = "ATTRIBUTE");
Property who As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");
Property onBehalfOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");
Property targetFormat As %String(MAXLEN = 1000000, XMLNAME = "targetFormat", XMLPROJECTION = "ATTRIBUTE");
Property sigFormat As %String(MAXLEN = 1000000, XMLNAME = "sigFormat", XMLPROJECTION = "ATTRIBUTE");
Property data As %String(MAXLEN = 1000000, XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Signature";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Signature";

}
