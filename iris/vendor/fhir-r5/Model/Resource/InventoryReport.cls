Class Spain.FHIR.DTL.vR5.Model.Resource.InventoryReport Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property countType As %String(MAXLEN = 1000000, XMLNAME = "countType", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property operationType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "operationType", XMLPROJECTION = "ELEMENT");
Property operationTypeReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "operationTypeReason", XMLPROJECTION = "ELEMENT");
Property reportedDateTime As %String(MAXLEN = 1000000, XMLNAME = "reportedDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property reporter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reporter", XMLPROJECTION = "ELEMENT");
Property reportingPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "reportingPeriod", XMLPROJECTION = "ELEMENT");
Property inventoryListing As list Of Spain.FHIR.DTL.vR5.Model.Element.InventoryReport.inventoryListing(XMLNAME = "inventoryListing", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InventoryReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InventoryReport";

}
