Class Spain.FHIR.DTL.vR5.Model.Element.Measure.group Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property subjectCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");
Property subjectReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");
Property basis As %String(MAXLEN = 1000000, XMLNAME = "basis", XMLPROJECTION = "ATTRIBUTE");
Property scoring As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "scoring", XMLPROJECTION = "ELEMENT");
Property scoringUnit As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "scoringUnit", XMLPROJECTION = "ELEMENT");
Property rateAggregation As %String(MAXLEN = 1000000, XMLNAME = "rateAggregation", XMLPROJECTION = "ATTRIBUTE");
Property improvementNotation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "improvementNotation", XMLPROJECTION = "ELEMENT");
Property library As list Of %String(MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");
Property population As list Of Spain.FHIR.DTL.vR5.Model.Element.Measure.group.population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");
Property stratifier As list Of Spain.FHIR.DTL.vR5.Model.Element.Measure.group.stratifier(XMLNAME = "stratifier", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group";

}

