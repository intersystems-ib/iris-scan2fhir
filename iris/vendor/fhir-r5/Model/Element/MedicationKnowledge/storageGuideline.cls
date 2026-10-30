Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.storageGuideline Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property stabilityDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "stabilityDuration", XMLPROJECTION = "ELEMENT");
Property environmentalSetting As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.storageGuideline.environmentalSetting(XMLNAME = "environmentalSetting", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.storageGuideline";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.storageGuideline";

}
