Class Spain.FHIR.DTL.vR5.Model.Element.MessageHeader.destination Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property endpointUrl As %String(MAXLEN = 1000000, XMLNAME = "endpointUrl", XMLPROJECTION = "ATTRIBUTE");
Property endpointReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpointReference", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property target As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property receiver As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageHeader.destination";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageHeader.destination";

}
