Class Spain.FHIR.DTL.vR5.Model.Resource.Consent Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property grantor As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "grantor", XMLPROJECTION = "ELEMENT");
Property grantee As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "grantee", XMLPROJECTION = "ELEMENT");
Property manager As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manager", XMLPROJECTION = "ELEMENT");
Property controller As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "controller", XMLPROJECTION = "ELEMENT");
Property sourceAttachment As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "sourceAttachment", XMLPROJECTION = "ELEMENT");
Property sourceReference As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "sourceReference", XMLPROJECTION = "ELEMENT");
Property regulatoryBasis As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "regulatoryBasis", XMLPROJECTION = "ELEMENT");
Property policyBasis As Spain.FHIR.DTL.vR5.Model.Element.Consent.policyBasis(XMLNAME = "policyBasis", XMLPROJECTION = "ELEMENT");
Property policyText As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "policyText", XMLPROJECTION = "ELEMENT");
Property verification As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.verification(XMLNAME = "verification", XMLPROJECTION = "ELEMENT");
Property decision As %String(MAXLEN = 1000000, XMLNAME = "decision", XMLPROJECTION = "ATTRIBUTE");
Property provision As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.provision(XMLNAME = "provision", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent";

}
