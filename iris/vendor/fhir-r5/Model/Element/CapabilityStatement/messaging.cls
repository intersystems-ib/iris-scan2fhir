Class Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.messaging Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property endpoint As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.messaging.endpoint(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
Property reliableCache As %Integer(XMLNAME = "reliableCache", XMLPROJECTION = "ATTRIBUTE");
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property supportedMessage As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.messaging.supportedMessage(XMLNAME = "supportedMessage", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.messaging";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.messaging";

}
