Class Spain.FHIR.DTL.vR5.Model.Resource.VerificationResult Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property target As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property targetLocation As list Of %String(MAXLEN = 1000000, XMLNAME = "targetLocation", XMLPROJECTION = "ELEMENT");
Property need As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "need", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");
Property validationType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "validationType", XMLPROJECTION = "ELEMENT");
Property validationProcess As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "validationProcess", XMLPROJECTION = "ELEMENT");
Property frequency As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "frequency", XMLPROJECTION = "ELEMENT");
Property lastPerformed As %String(MAXLEN = 1000000, XMLNAME = "lastPerformed", XMLPROJECTION = "ATTRIBUTE");
Property nextScheduled As %String(MAXLEN = 1000000, XMLNAME = "nextScheduled", XMLPROJECTION = "ATTRIBUTE");
Property failureAction As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "failureAction", XMLPROJECTION = "ELEMENT");
Property primarySource As list Of Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.primarySource(XMLNAME = "primarySource", XMLPROJECTION = "ELEMENT");
Property attestation As Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.attestation(XMLNAME = "attestation", XMLPROJECTION = "ELEMENT");
Property validator As list Of Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.validator(XMLNAME = "validator", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult";

}

