Class Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityRequest.supportingInfo Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property information As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "information", XMLPROJECTION = "ELEMENT") [ Required ];
Property appliesToAll As %Boolean(XMLNAME = "appliesToAll", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.supportingInfo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.supportingInfo";

}
