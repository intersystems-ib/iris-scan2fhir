Class Spain.FHIR.DTL.vR5.Model.Element.Invoice.lineItem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");
Property servicedDate As %String(MAXLEN = 1000000, XMLNAME = "servicedDate", XMLPROJECTION = "ATTRIBUTE");
Property servicedPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "servicedPeriod", XMLPROJECTION = "ELEMENT");
Property chargeItemReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "chargeItemReference", XMLPROJECTION = "ELEMENT");
Property chargeItemCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "chargeItemCodeableConcept", XMLPROJECTION = "ELEMENT");
Property priceComponent As list Of Spain.FHIR.DTL.vR5.Model.Datatype.MonetaryComponent(XMLNAME = "priceComponent", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice.lineItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice.lineItem";

}
