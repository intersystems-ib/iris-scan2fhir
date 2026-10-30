Class Spain.FHIR.DTL.vR5.Model.Element.MeasureReport.group.population Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property count As %Integer(XMLNAME = "count", XMLPROJECTION = "ATTRIBUTE");
Property subjectResults As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectResults", XMLPROJECTION = "ELEMENT");
Property subjectReport As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectReport", XMLPROJECTION = "ELEMENT");
Property subjects As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjects", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport.group.population";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport.group.population";

}
