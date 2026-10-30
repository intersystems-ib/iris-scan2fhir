Class Spain.FHIR.DTL.vR5.Model.Element.InventoryReport.inventoryListing Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property itemStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "itemStatus", XMLPROJECTION = "ELEMENT");
Property countingDateTime As %String(MAXLEN = 1000000, XMLNAME = "countingDateTime", XMLPROJECTION = "ATTRIBUTE");
Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryReport.inventoryListing.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InventoryReport.inventoryListing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InventoryReport.inventoryListing";

}
