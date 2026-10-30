Class Spain.FHIR.DTL.vR5.Model.Element.Ingredient.manufacturer Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property role As %String(MAXLEN = 1000000, XMLNAME = "role", XMLPROJECTION = "ATTRIBUTE");
Property manufacturer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Ingredient.manufacturer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Ingredient.manufacturer";

}
