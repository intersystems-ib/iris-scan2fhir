Class Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.regulatoryIdentifier Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property deviceIdentifier As %String(MAXLEN = 1000000, XMLNAME = "deviceIdentifier", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property issuer As %String(MAXLEN = 1000000, XMLNAME = "issuer", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property jurisdiction As %String(MAXLEN = 1000000, XMLNAME = "jurisdiction", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.regulatoryIdentifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.regulatoryIdentifier";

}
