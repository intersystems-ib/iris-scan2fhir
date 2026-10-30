Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term.asset.valuedItem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property entityCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "entityCodeableConcept", XMLPROJECTION = "ELEMENT");
Property entityReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "entityReference", XMLPROJECTION = "ELEMENT");
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property effectiveTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveTime", XMLPROJECTION = "ATTRIBUTE");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property unitPrice As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");
Property factor As %Numeric(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");
Property points As %Numeric(XMLNAME = "points", XMLPROJECTION = "ATTRIBUTE");
Property net As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");
Property payment As %String(MAXLEN = 1000000, XMLNAME = "payment", XMLPROJECTION = "ATTRIBUTE");
Property paymentDate As %String(MAXLEN = 1000000, XMLNAME = "paymentDate", XMLPROJECTION = "ATTRIBUTE");
Property responsible As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "responsible", XMLPROJECTION = "ELEMENT");
Property recipient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");
Property linkId As list Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");
Property securityLabelNumber As list Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset.valuedItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset.valuedItem";

}

