Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.supplement Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE");
Property schedule As Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.supplement.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.supplement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.supplement";

}
