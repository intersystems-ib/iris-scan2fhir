Class Spain.FHIR.DTL.vR5.Model.Resource.Invoice Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property cancelledReason As %String(MAXLEN = 1000000, XMLNAME = "cancelledReason", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property recipient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property creation As %String(MAXLEN = 1000000, XMLNAME = "creation", XMLPROJECTION = "ATTRIBUTE");
Property periodDate As %String(MAXLEN = 1000000, XMLNAME = "periodDate", XMLPROJECTION = "ATTRIBUTE");
Property periodPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "periodPeriod", XMLPROJECTION = "ELEMENT");
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.Invoice.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");
Property issuer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "issuer", XMLPROJECTION = "ELEMENT");
Property account As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");
Property lineItem As list Of Spain.FHIR.DTL.vR5.Model.Element.Invoice.lineItem(XMLNAME = "lineItem", XMLPROJECTION = "ELEMENT");
Property totalPriceComponent As list Of Spain.FHIR.DTL.vR5.Model.Datatype.MonetaryComponent(XMLNAME = "totalPriceComponent", XMLPROJECTION = "ELEMENT");
Property totalNet As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "totalNet", XMLPROJECTION = "ELEMENT");
Property totalGross As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "totalGross", XMLPROJECTION = "ELEMENT");
Property paymentTerms As %String(MAXLEN = 1000000, XMLNAME = "paymentTerms", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice";

}
