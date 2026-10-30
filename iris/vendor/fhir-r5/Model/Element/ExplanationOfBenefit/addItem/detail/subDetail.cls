Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.addItem.detail.subDetail Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property traceNumber As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "traceNumber", XMLPROJECTION = "ELEMENT");
Property revenue As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "revenue", XMLPROJECTION = "ELEMENT");
Property productOrService As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");
Property productOrServiceEnd As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrServiceEnd", XMLPROJECTION = "ELEMENT");
Property modifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property patientPaid As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "patientPaid", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property unitPrice As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");
Property factor As %Numeric(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");
Property tax As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "tax", XMLPROJECTION = "ELEMENT");
Property net As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");
Property noteNumber As list Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.addItem.detail.subDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.addItem.detail.subDetail";

}

