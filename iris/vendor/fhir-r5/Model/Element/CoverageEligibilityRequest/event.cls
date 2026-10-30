Class Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityRequest.event Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property whenDateTime As %String(MAXLEN = 1000000, XMLNAME = "whenDateTime", XMLPROJECTION = "ATTRIBUTE");
Property whenPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "whenPeriod", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.event";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.event";

}
