Class Spain.FHIR.DTL.vR5.Model.Element.RiskAssessment.prediction Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property outcome As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");
Property probabilityDecimal As %Numeric(XMLNAME = "probabilityDecimal", XMLPROJECTION = "ATTRIBUTE");
Property probabilityRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "probabilityRange", XMLPROJECTION = "ELEMENT");
Property qualitativeRisk As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "qualitativeRisk", XMLPROJECTION = "ELEMENT");
Property relativeRisk As %Numeric(XMLNAME = "relativeRisk", XMLPROJECTION = "ATTRIBUTE");
Property whenPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "whenPeriod", XMLPROJECTION = "ELEMENT");
Property whenRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "whenRange", XMLPROJECTION = "ELEMENT");
Property rationale As %String(MAXLEN = 1000000, XMLNAME = "rationale", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskAssessment.prediction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskAssessment.prediction";

}
