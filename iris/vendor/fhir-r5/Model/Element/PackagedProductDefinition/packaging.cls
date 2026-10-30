Class Spain.FHIR.DTL.vR5.Model.Element.PackagedProductDefinition.packaging Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property componentPart As %Boolean(XMLNAME = "componentPart", XMLPROJECTION = "ATTRIBUTE");
Property quantity As %Integer(XMLNAME = "quantity", XMLPROJECTION = "ATTRIBUTE");
Property material As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");
Property alternateMaterial As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "alternateMaterial", XMLPROJECTION = "ELEMENT");
Property shelfLifeStorage As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ProductShelfLife(XMLNAME = "shelfLifeStorage", XMLPROJECTION = "ELEMENT");
Property manufacturer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.PackagedProductDefinition.packaging.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property containedItem As list Of Spain.FHIR.DTL.vR5.Model.Element.PackagedProductDefinition.packaging.containedItem(XMLNAME = "containedItem", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PackagedProductDefinition.packaging";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PackagedProductDefinition.packaging";

}
