Class Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.coverage Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property network As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property benefit As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.coverage.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage";

}
