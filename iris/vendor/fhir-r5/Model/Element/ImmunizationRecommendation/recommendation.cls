Class Spain.FHIR.DTL.vR5.Model.Element.ImmunizationRecommendation.recommendation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property vaccineCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "vaccineCode", XMLPROJECTION = "ELEMENT");
Property targetDisease As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT");
Property contraindicatedVaccineCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "contraindicatedVaccineCode", XMLPROJECTION = "ELEMENT");
Property forecastStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "forecastStatus", XMLPROJECTION = "ELEMENT") [ Required ];
Property forecastReason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "forecastReason", XMLPROJECTION = "ELEMENT");
Property dateCriterion As list Of Spain.FHIR.DTL.vR5.Model.Element.ImmunizationRecommendation.recommendation.dateCriterion(XMLNAME = "dateCriterion", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");
Property doseNumber As %String(MAXLEN = 1000000, XMLNAME = "doseNumber", XMLPROJECTION = "ATTRIBUTE");
Property seriesDoses As %String(MAXLEN = 1000000, XMLNAME = "seriesDoses", XMLPROJECTION = "ATTRIBUTE");
Property supportingImmunization As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingImmunization", XMLPROJECTION = "ELEMENT");
Property supportingPatientInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingPatientInformation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation.recommendation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation.recommendation";

}
