Class Spain.FHIR.DTL.vR5.Model.Element.Ingredient.substance.strength.referenceStrength Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property substance As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "substance", XMLPROJECTION = "ELEMENT") [ Required ];
Property strengthRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "strengthRatio", XMLPROJECTION = "ELEMENT");
Property strengthRatioRange As Spain.FHIR.DTL.vR5.Model.Datatype.RatioRange(XMLNAME = "strengthRatioRange", XMLPROJECTION = "ELEMENT");
Property strengthQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "strengthQuantity", XMLPROJECTION = "ELEMENT");
Property measurementPoint As %String(MAXLEN = 1000000, XMLNAME = "measurementPoint", XMLPROJECTION = "ATTRIBUTE");
Property country As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Ingredient.substance.strength.referenceStrength";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Ingredient.substance.strength.referenceStrength";

}
