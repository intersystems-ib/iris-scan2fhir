Class Spain.FHIR.DTL.vR5.Model.Element.ManufacturedItemDefinition.component.constituent Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property amount As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");
Property location As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property function As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");
Property hasIngredient As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "hasIngredient", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ManufacturedItemDefinition.component.constituent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ManufacturedItemDefinition.component.constituent";

}
