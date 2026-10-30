Class Spain.FHIR.DTL.vR5.Model.Resource.PaymentReconciliation Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property kind As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "kind", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property enterer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");
Property issuerType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "issuerType", XMLPROJECTION = "ELEMENT");
Property paymentIssuer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "paymentIssuer", XMLPROJECTION = "ELEMENT");
Property request As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property requestor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE");
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property cardBrand As %String(MAXLEN = 1000000, XMLNAME = "cardBrand", XMLPROJECTION = "ATTRIBUTE");
Property accountNumber As %String(MAXLEN = 1000000, XMLNAME = "accountNumber", XMLPROJECTION = "ATTRIBUTE");
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");
Property processor As %String(MAXLEN = 1000000, XMLNAME = "processor", XMLPROJECTION = "ATTRIBUTE");
Property referenceNumber As %String(MAXLEN = 1000000, XMLNAME = "referenceNumber", XMLPROJECTION = "ATTRIBUTE");
Property authorization As %String(MAXLEN = 1000000, XMLNAME = "authorization", XMLPROJECTION = "ATTRIBUTE");
Property tenderedAmount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "tenderedAmount", XMLPROJECTION = "ELEMENT");
Property returnedAmount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "returnedAmount", XMLPROJECTION = "ELEMENT");
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT") [ Required ];
Property paymentIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "paymentIdentifier", XMLPROJECTION = "ELEMENT");
Property allocation As list Of Spain.FHIR.DTL.vR5.Model.Element.PaymentReconciliation.allocation(XMLNAME = "allocation", XMLPROJECTION = "ELEMENT");
Property formCode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");
Property processNote As list Of Spain.FHIR.DTL.vR5.Model.Element.PaymentReconciliation.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentReconciliation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentReconciliation";

}
