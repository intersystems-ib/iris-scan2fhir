Class Spain.FHIR.DTL.vR5.Model.Resource.Ingredient Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property for As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "for", XMLPROJECTION = "ELEMENT");
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT") [ Required ];
Property function As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");
Property group As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "group", XMLPROJECTION = "ELEMENT");
Property allergenicIndicator As %Boolean(XMLNAME = "allergenicIndicator", XMLPROJECTION = "ATTRIBUTE");
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
Property manufacturer As list Of Spain.FHIR.DTL.vR5.Model.Element.Ingredient.manufacturer(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property substance As Spain.FHIR.DTL.vR5.Model.Element.Ingredient.substance(XMLNAME = "substance", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Ingredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Ingredient";

}
