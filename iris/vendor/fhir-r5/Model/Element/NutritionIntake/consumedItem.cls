Class Spain.FHIR.DTL.vR5.Model.Element.NutritionIntake.consumedItem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property nutritionProduct As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "nutritionProduct", XMLPROJECTION = "ELEMENT") [ Required ];
Property schedule As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");
Property rate As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "rate", XMLPROJECTION = "ELEMENT");
Property notConsumed As %Boolean(XMLNAME = "notConsumed", XMLPROJECTION = "ATTRIBUTE");
Property notConsumedReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "notConsumedReason", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionIntake.consumedItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionIntake.consumedItem";

}
