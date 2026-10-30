Class Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.contraindication Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property diseaseSymptomProcedure As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "diseaseSymptomProcedure", XMLPROJECTION = "ELEMENT");
Property diseaseStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "diseaseStatus", XMLPROJECTION = "ELEMENT");
Property comorbidity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "comorbidity", XMLPROJECTION = "ELEMENT");
Property indication As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "indication", XMLPROJECTION = "ELEMENT");
Property applicability As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "applicability", XMLPROJECTION = "ELEMENT");
Property otherTherapy As list Of Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.contraindication.otherTherapy(XMLNAME = "otherTherapy", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalUseDefinition.contraindication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalUseDefinition.contraindication";

}
