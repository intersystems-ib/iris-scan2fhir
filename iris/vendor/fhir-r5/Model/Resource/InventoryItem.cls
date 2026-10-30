Class Spain.FHIR.DTL.vR5.Model.Resource.InventoryItem Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property responsibleOrganization As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.responsibleOrganization(XMLNAME = "responsibleOrganization", XMLPROJECTION = "ELEMENT");
Property description As Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.description(XMLNAME = "description", XMLPROJECTION = "ELEMENT");
Property inventoryStatus As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "inventoryStatus", XMLPROJECTION = "ELEMENT");
Property baseUnit As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "baseUnit", XMLPROJECTION = "ELEMENT");
Property netContent As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "netContent", XMLPROJECTION = "ELEMENT");
Property association As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.association(XMLNAME = "association", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
Property instance As Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");
Property productReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "productReference", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InventoryItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InventoryItem";

}
