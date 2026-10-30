Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.enteralFormula Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property baseFormulaType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "baseFormulaType", XMLPROJECTION = "ELEMENT");
Property baseFormulaProductName As %String(MAXLEN = 1000000, XMLNAME = "baseFormulaProductName", XMLPROJECTION = "ATTRIBUTE");
Property deliveryDevice As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "deliveryDevice", XMLPROJECTION = "ELEMENT");
Property additive As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.enteralFormula.additive(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");
Property caloricDensity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "caloricDensity", XMLPROJECTION = "ELEMENT");
Property routeOfAdministration As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "routeOfAdministration", XMLPROJECTION = "ELEMENT");
Property administration As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.enteralFormula.administration(XMLNAME = "administration", XMLPROJECTION = "ELEMENT");
Property maxVolumeToDeliver As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "maxVolumeToDeliver", XMLPROJECTION = "ELEMENT");
Property administrationInstruction As %String(MAXLEN = 1000000, XMLNAME = "administrationInstruction", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.enteralFormula";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.enteralFormula";

}
