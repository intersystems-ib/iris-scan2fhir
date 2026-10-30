Class Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.attestation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property who As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");
Property onBehalfOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");
Property communicationMethod As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "communicationMethod", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property sourceIdentityCertificate As %String(MAXLEN = 1000000, XMLNAME = "sourceIdentityCertificate", XMLPROJECTION = "ATTRIBUTE");
Property proxyIdentityCertificate As %String(MAXLEN = 1000000, XMLNAME = "proxyIdentityCertificate", XMLPROJECTION = "ATTRIBUTE");
Property proxySignature As Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "proxySignature", XMLPROJECTION = "ELEMENT");
Property sourceSignature As Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "sourceSignature", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.attestation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.attestation";

}
