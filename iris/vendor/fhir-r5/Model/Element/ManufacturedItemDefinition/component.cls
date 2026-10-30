Class Spain.FHIR.DTL.vR5.Model.Element.ManufacturedItemDefinition.component Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property function As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");
Property amount As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");
Property constituent As list Of Spain.FHIR.DTL.vR5.Model.Element.ManufacturedItemDefinition.component.constituent(XMLNAME = "constituent", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ManufacturedItemDefinition.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ManufacturedItemDefinition.component";

}
