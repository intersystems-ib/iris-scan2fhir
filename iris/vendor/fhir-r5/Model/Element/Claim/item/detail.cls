Class Spain.FHIR.DTL.vR5.Model.Element.Claim.item.detail Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property traceNumber As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "traceNumber", XMLPROJECTION = "ELEMENT");
Property revenue As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "revenue", XMLPROJECTION = "ELEMENT");
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property productOrService As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");
Property productOrServiceEnd As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrServiceEnd", XMLPROJECTION = "ELEMENT");
Property modifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property programCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "programCode", XMLPROJECTION = "ELEMENT");
Property patientPaid As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "patientPaid", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property unitPrice As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");
Property factor As %Numeric(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");
Property tax As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "tax", XMLPROJECTION = "ELEMENT");
Property net As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");
Property udi As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "udi", XMLPROJECTION = "ELEMENT");
Property subDetail As list Of Spain.FHIR.DTL.vR5.Model.Element.Claim.item.detail.subDetail(XMLNAME = "subDetail", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.item.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.item.detail";

}
