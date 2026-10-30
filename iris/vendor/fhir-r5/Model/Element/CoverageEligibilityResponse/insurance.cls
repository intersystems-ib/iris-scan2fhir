Class Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.insurance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property coverage As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];
Property inforce As %Boolean(XMLNAME = "inforce", XMLPROJECTION = "ATTRIBUTE");
Property benefitPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "benefitPeriod", XMLPROJECTION = "ELEMENT");
Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.insurance.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance";

}
