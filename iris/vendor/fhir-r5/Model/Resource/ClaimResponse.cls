Class Spain.FHIR.DTL.vR5.Model.Resource.ClaimResponse Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property insurer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");
Property requestor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");
Property request As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property decision As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");
Property preAuthRef As %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ATTRIBUTE");
Property preAuthPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "preAuthPeriod", XMLPROJECTION = "ELEMENT");
Property event As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.event(XMLNAME = "event", XMLPROJECTION = "ELEMENT");
Property payeeType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "payeeType", XMLPROJECTION = "ELEMENT");
Property encounter As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property diagnosisRelatedGroup As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisRelatedGroup", XMLPROJECTION = "ELEMENT");
Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");
Property addItem As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.addItem(XMLNAME = "addItem", XMLPROJECTION = "ELEMENT");
Property total As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.total(XMLNAME = "total", XMLPROJECTION = "ELEMENT");
Property payment As Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.payment(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");
Property fundsReserve As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");
Property formCode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");
Property form As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "form", XMLPROJECTION = "ELEMENT");
Property processNote As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");
Property communicationRequest As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "communicationRequest", XMLPROJECTION = "ELEMENT");
Property insurance As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");
Property error As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.error(XMLNAME = "error", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse";

}
