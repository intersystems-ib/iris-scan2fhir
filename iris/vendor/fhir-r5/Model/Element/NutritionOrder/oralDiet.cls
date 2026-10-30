Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property schedule As Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");
Property nutrient As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet.nutrient(XMLNAME = "nutrient", XMLPROJECTION = "ELEMENT");
Property texture As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet.texture(XMLNAME = "texture", XMLPROJECTION = "ELEMENT");
Property fluidConsistencyType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fluidConsistencyType", XMLPROJECTION = "ELEMENT");
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.oralDiet";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.oralDiet";

}
