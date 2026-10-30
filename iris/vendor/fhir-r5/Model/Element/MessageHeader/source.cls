Class Spain.FHIR.DTL.vR5.Model.Element.MessageHeader.source Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property endpointUrl As %String(MAXLEN = 1000000, XMLNAME = "endpointUrl", XMLPROJECTION = "ATTRIBUTE");
Property endpointReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpointReference", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property software As %String(MAXLEN = 1000000, XMLNAME = "software", XMLPROJECTION = "ATTRIBUTE");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property contact As Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageHeader.source";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageHeader.source";

}
