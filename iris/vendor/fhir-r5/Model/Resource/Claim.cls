Class Spain.FHIR.DTL.vR5.Model.Resource.Claim Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property traceNumber As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "traceNumber", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property subType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property billablePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "billablePeriod", XMLPROJECTION = "ELEMENT");
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property enterer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");
Property insurer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");
Property provider As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");
Property priority As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");
Property fundsReserve As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");
Property related As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");
Property prescription As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "prescription", XMLPROJECTION = "ELEMENT");
Property originalPrescription As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "originalPrescription", XMLPROJECTION = "ELEMENT");
Property payee As Spain.FHIR.DTL.vR5.Model.Element.Claim.payee(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");
Property referral As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "referral", XMLPROJECTION = "ELEMENT");
Property encounter As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property facility As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");
Property diagnosisRelatedGroup As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisRelatedGroup", XMLPROJECTION = "ELEMENT");
Property event As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.event(XMLNAME = "event", XMLPROJECTION = "ELEMENT");
Property careTeam As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.careTeam(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");
Property procedure As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");
Property insurance As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");
Property accident As Spain.FHIR.DTL.vR5.Model.Element.Claim.accident(XMLNAME = "accident", XMLPROJECTION = "ELEMENT");
Property patientPaid As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "patientPaid", XMLPROJECTION = "ELEMENT");
Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");
Property total As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "total", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim";

}
