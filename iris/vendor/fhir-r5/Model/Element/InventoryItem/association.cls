Class Spain.FHIR.DTL.vR5.Model.Element.InventoryItem.association Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property associationType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "associationType", XMLPROJECTION = "ELEMENT") [ Required ];
Property relatedItem As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "relatedItem", XMLPROJECTION = "ELEMENT") [ Required ];
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InventoryItem.association";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InventoryItem.association";

}
