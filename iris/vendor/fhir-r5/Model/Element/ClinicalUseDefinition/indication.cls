Class Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.indication Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property diseaseSymptomProcedure As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "diseaseSymptomProcedure", XMLPROJECTION = "ELEMENT");
Property diseaseStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "diseaseStatus", XMLPROJECTION = "ELEMENT");
Property comorbidity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "comorbidity", XMLPROJECTION = "ELEMENT");
Property intendedEffect As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "intendedEffect", XMLPROJECTION = "ELEMENT");
Property durationRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "durationRange", XMLPROJECTION = "ELEMENT");
Property durationString As %String(MAXLEN = 1000000, XMLNAME = "durationString", XMLPROJECTION = "ATTRIBUTE");
Property undesirableEffect As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "undesirableEffect", XMLPROJECTION = "ELEMENT");
Property applicability As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "applicability", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalUseDefinition.indication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalUseDefinition.indication";

}
