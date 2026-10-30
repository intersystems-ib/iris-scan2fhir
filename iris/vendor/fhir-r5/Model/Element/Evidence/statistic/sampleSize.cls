Class Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.sampleSize Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property numberOfStudies As %Integer(XMLNAME = "numberOfStudies", XMLPROJECTION = "ATTRIBUTE");
Property numberOfParticipants As %Integer(XMLNAME = "numberOfParticipants", XMLPROJECTION = "ATTRIBUTE");
Property knownDataCount As %Integer(XMLNAME = "knownDataCount", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence.statistic.sampleSize";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence.statistic.sampleSize";

}
