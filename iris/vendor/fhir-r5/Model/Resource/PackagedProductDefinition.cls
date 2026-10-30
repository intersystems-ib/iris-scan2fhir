Class Spain.FHIR.DTL.vR5.Model.Resource.PackagedProductDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property packageFor As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "packageFor", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");
Property containedItemQuantity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "containedItemQuantity", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property legalStatusOfSupply As list Of Spain.FHIR.DTL.vR5.Model.Element.PackagedProductDefinition.legalStatusOfSupply(XMLNAME = "legalStatusOfSupply", XMLPROJECTION = "ELEMENT");
Property marketingStatus As list Of Spain.FHIR.DTL.vR5.Model.Datatype.MarketingStatus(XMLNAME = "marketingStatus", XMLPROJECTION = "ELEMENT");
Property copackagedIndicator As %Boolean(XMLNAME = "copackagedIndicator", XMLPROJECTION = "ATTRIBUTE");
Property manufacturer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property attachedDocument As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "attachedDocument", XMLPROJECTION = "ELEMENT");
Property packaging As Spain.FHIR.DTL.vR5.Model.Element.PackagedProductDefinition.packaging(XMLNAME = "packaging", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PackagedProductDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PackagedProductDefinition";

}
