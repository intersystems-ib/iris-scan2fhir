Class Spain.FHIR.DTL.vR5.Model.Resource.ExplanationOfBenefit Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property fundsReserveRequested As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserveRequested", XMLPROJECTION = "ELEMENT");
Property fundsReserve As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");
Property related As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");
Property prescription As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "prescription", XMLPROJECTION = "ELEMENT");
Property originalPrescription As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "originalPrescription", XMLPROJECTION = "ELEMENT");
Property event As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.event(XMLNAME = "event", XMLPROJECTION = "ELEMENT");
Property payee As Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.payee(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");
Property referral As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "referral", XMLPROJECTION = "ELEMENT");
Property encounter As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property facility As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");
Property claim As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "claim", XMLPROJECTION = "ELEMENT");
Property claimResponse As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "claimResponse", XMLPROJECTION = "ELEMENT");
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property decision As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");
Property preAuthRef As list Of %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ELEMENT");
Property preAuthRefPeriod As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "preAuthRefPeriod", XMLPROJECTION = "ELEMENT");
Property diagnosisRelatedGroup As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisRelatedGroup", XMLPROJECTION = "ELEMENT");
Property careTeam As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.careTeam(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");
Property procedure As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");
Property precedence As %Integer(XMLNAME = "precedence", XMLPROJECTION = "ATTRIBUTE");
Property insurance As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");
Property accident As Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.accident(XMLNAME = "accident", XMLPROJECTION = "ELEMENT");
Property patientPaid As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "patientPaid", XMLPROJECTION = "ELEMENT");
Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");
Property addItem As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.addItem(XMLNAME = "addItem", XMLPROJECTION = "ELEMENT");
Property total As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.total(XMLNAME = "total", XMLPROJECTION = "ELEMENT");
Property payment As Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.payment(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");
Property formCode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");
Property form As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "form", XMLPROJECTION = "ELEMENT");
Property processNote As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");
Property benefitPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "benefitPeriod", XMLPROJECTION = "ELEMENT");
Property benefitBalance As list Of Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.benefitBalance(XMLNAME = "benefitBalance", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit";

}

