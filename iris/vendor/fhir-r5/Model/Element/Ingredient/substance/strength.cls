Class Spain.FHIR.DTL.vR5.Model.Element.Ingredient.substance.strength Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property presentationRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "presentationRatio", XMLPROJECTION = "ELEMENT");
Property presentationRatioRange As Spain.FHIR.DTL.vR5.Model.Datatype.RatioRange(XMLNAME = "presentationRatioRange", XMLPROJECTION = "ELEMENT");
Property presentationCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "presentationCodeableConcept", XMLPROJECTION = "ELEMENT");
Property presentationQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "presentationQuantity", XMLPROJECTION = "ELEMENT");
Property textPresentation As %String(MAXLEN = 1000000, XMLNAME = "textPresentation", XMLPROJECTION = "ATTRIBUTE");
Property concentrationRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "concentrationRatio", XMLPROJECTION = "ELEMENT");
Property concentrationRatioRange As Spain.FHIR.DTL.vR5.Model.Datatype.RatioRange(XMLNAME = "concentrationRatioRange", XMLPROJECTION = "ELEMENT");
Property concentrationCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "concentrationCodeableConcept", XMLPROJECTION = "ELEMENT");
Property concentrationQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "concentrationQuantity", XMLPROJECTION = "ELEMENT");
Property textConcentration As %String(MAXLEN = 1000000, XMLNAME = "textConcentration", XMLPROJECTION = "ATTRIBUTE");
Property basis As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "basis", XMLPROJECTION = "ELEMENT");
Property measurementPoint As %String(MAXLEN = 1000000, XMLNAME = "measurementPoint", XMLPROJECTION = "ATTRIBUTE");
Property country As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");
Property referenceStrength As list Of Spain.FHIR.DTL.vR5.Model.Element.Ingredient.substance.strength.referenceStrength(XMLNAME = "referenceStrength", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Ingredient.substance.strength";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Ingredient.substance.strength";

}
