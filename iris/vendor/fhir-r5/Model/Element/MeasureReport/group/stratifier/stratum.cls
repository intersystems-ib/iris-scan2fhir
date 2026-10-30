Class Spain.FHIR.DTL.vR5.Model.Element.MeasureReport.group.stratifier.stratum Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property valueCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");
Property valueQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");
Property valueRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");
Property valueReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");
Property component As list Of Spain.FHIR.DTL.vR5.Model.Element.MeasureReport.group.stratifier.stratum.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
Property population As list Of Spain.FHIR.DTL.vR5.Model.Element.MeasureReport.group.stratifier.stratum.population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");
Property measureScoreQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "measureScoreQuantity", XMLPROJECTION = "ELEMENT");
Property measureScoreDateTime As %String(MAXLEN = 1000000, XMLNAME = "measureScoreDateTime", XMLPROJECTION = "ATTRIBUTE");
Property measureScoreCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "measureScoreCodeableConcept", XMLPROJECTION = "ELEMENT");
Property measureScorePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "measureScorePeriod", XMLPROJECTION = "ELEMENT");
Property measureScoreRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "measureScoreRange", XMLPROJECTION = "ELEMENT");
Property measureScoreDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "measureScoreDuration", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport.group.stratifier.stratum";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport.group.stratifier.stratum";

}
