Class Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested.handling Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property temperatureQualifier As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "temperatureQualifier", XMLPROJECTION = "ELEMENT");
Property temperatureRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "temperatureRange", XMLPROJECTION = "ELEMENT");
Property maxDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "maxDuration", XMLPROJECTION = "ELEMENT");
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested.handling";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested.handling";

}
