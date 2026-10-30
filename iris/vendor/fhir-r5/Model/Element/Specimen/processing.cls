Class Spain.FHIR.DTL.vR5.Model.Element.Specimen.processing Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property additive As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");
Property timeDateTime As %String(MAXLEN = 1000000, XMLNAME = "timeDateTime", XMLPROJECTION = "ATTRIBUTE");
Property timePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "timePeriod", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.processing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.processing";

}
