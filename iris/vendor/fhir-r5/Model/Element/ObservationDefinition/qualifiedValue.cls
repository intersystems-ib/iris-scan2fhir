Class Spain.FHIR.DTL.vR5.Model.Element.ObservationDefinition.qualifiedValue Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property context As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "context", XMLPROJECTION = "ELEMENT");
Property appliesTo As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "appliesTo", XMLPROJECTION = "ELEMENT");
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");
Property age As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "age", XMLPROJECTION = "ELEMENT");
Property gestationalAge As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "gestationalAge", XMLPROJECTION = "ELEMENT");
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");
Property rangeCategory As %String(MAXLEN = 1000000, XMLNAME = "rangeCategory", XMLPROJECTION = "ATTRIBUTE");
Property range As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "range", XMLPROJECTION = "ELEMENT");
Property validCodedValueSet As %String(MAXLEN = 1000000, XMLNAME = "validCodedValueSet", XMLPROJECTION = "ATTRIBUTE");
Property normalCodedValueSet As %String(MAXLEN = 1000000, XMLNAME = "normalCodedValueSet", XMLPROJECTION = "ATTRIBUTE");
Property abnormalCodedValueSet As %String(MAXLEN = 1000000, XMLNAME = "abnormalCodedValueSet", XMLPROJECTION = "ATTRIBUTE");
Property criticalCodedValueSet As %String(MAXLEN = 1000000, XMLNAME = "criticalCodedValueSet", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition.qualifiedValue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition.qualifiedValue";

}
