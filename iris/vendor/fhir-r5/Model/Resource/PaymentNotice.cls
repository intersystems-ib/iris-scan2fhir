Class Spain.FHIR.DTL.vR5.Model.Resource.PaymentNotice Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property request As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property response As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "response", XMLPROJECTION = "ELEMENT");
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property reporter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reporter", XMLPROJECTION = "ELEMENT");
Property payment As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");
Property paymentDate As %String(MAXLEN = 1000000, XMLNAME = "paymentDate", XMLPROJECTION = "ATTRIBUTE");
Property payee As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");
Property recipient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT") [ Required ];
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT") [ Required ];
Property paymentStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "paymentStatus", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentNotice";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentNotice";

}
