Class Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.addItem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property itemSequence As list Of %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ELEMENT");
Property detailSequence As list Of %Integer(XMLNAME = "detailSequence", XMLPROJECTION = "ELEMENT");
Property subdetailSequence As list Of %Integer(XMLNAME = "subdetailSequence", XMLPROJECTION = "ELEMENT");
Property traceNumber As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "traceNumber", XMLPROJECTION = "ELEMENT");
Property provider As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");
Property revenue As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "revenue", XMLPROJECTION = "ELEMENT");
Property productOrService As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");
Property productOrServiceEnd As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrServiceEnd", XMLPROJECTION = "ELEMENT");
Property request As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property modifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property programCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "programCode", XMLPROJECTION = "ELEMENT");
Property servicedDate As %String(MAXLEN = 1000000, XMLNAME = "servicedDate", XMLPROJECTION = "ATTRIBUTE");
Property servicedPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "servicedPeriod", XMLPROJECTION = "ELEMENT");
Property locationCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "locationCodeableConcept", XMLPROJECTION = "ELEMENT");
Property locationAddress As Spain.FHIR.DTL.vR5.Model.Datatype.Address(XMLNAME = "locationAddress", XMLPROJECTION = "ELEMENT");
Property locationReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "locationReference", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property unitPrice As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");
Property factor As %Numeric(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");
Property tax As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "tax", XMLPROJECTION = "ELEMENT");
Property net As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");
Property bodySite As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.addItem.bodySite(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property noteNumber As list Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");
Property detail As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.addItem.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.addItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.addItem";

}

