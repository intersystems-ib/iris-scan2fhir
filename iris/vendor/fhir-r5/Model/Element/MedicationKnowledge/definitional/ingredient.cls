Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.definitional.ingredient Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property item As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "item", XMLPROJECTION = "ELEMENT") [ Required ];
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property strengthRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "strengthRatio", XMLPROJECTION = "ELEMENT");
Property strengthCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "strengthCodeableConcept", XMLPROJECTION = "ELEMENT");
Property strengthQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "strengthQuantity", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.definitional.ingredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.definitional.ingredient";

}
