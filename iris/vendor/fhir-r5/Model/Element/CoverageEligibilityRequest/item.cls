Class Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityRequest.item Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property supportingInfoSequence As list Of %Integer(XMLNAME = "supportingInfoSequence", XMLPROJECTION = "ELEMENT");
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property productOrService As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");
Property modifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property provider As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property unitPrice As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");
Property facility As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");
Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityRequest.item.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");
Property detail As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.item";

}

