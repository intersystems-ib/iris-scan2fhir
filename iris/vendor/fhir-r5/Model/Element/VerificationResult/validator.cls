Class Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.validator Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property organization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT") [ Required ];
Property identityCertificate As %String(MAXLEN = 1000000, XMLNAME = "identityCertificate", XMLPROJECTION = "ATTRIBUTE");
Property attestationSignature As Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "attestationSignature", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.validator";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.validator";

}
