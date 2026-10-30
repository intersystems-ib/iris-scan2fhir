Class Spain.FHIR.DTL.vR5.Model.Resource.NutritionProduct Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property manufacturer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property nutrient As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionProduct.nutrient(XMLNAME = "nutrient", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionProduct.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property knownAllergen As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "knownAllergen", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionProduct.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
Property instance As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionProduct.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionProduct";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionProduct";

}
