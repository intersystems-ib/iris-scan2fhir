Class Spain.FHIR.DTL.vR5.Model.Element.Medication.ingredient Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property item As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "item", XMLPROJECTION = "ELEMENT") [ Required ];
Property isActive As %Boolean(XMLNAME = "isActive", XMLPROJECTION = "ATTRIBUTE");
Property strengthRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "strengthRatio", XMLPROJECTION = "ELEMENT");
Property strengthCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "strengthCodeableConcept", XMLPROJECTION = "ELEMENT");
Property strengthQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "strengthQuantity", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Medication.ingredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Medication.ingredient";

}
