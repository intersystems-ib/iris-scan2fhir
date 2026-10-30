Class Spain.FHIR.DTL.vR5.Model.Resource.ManufacturedItemDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property manufacturedDoseForm As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "manufacturedDoseForm", XMLPROJECTION = "ELEMENT") [ Required ];
Property unitOfPresentation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "unitOfPresentation", XMLPROJECTION = "ELEMENT");
Property manufacturer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property marketingStatus As list Of Spain.FHIR.DTL.vR5.Model.Datatype.MarketingStatus(XMLNAME = "marketingStatus", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.ManufacturedItemDefinition.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property component As list Of Spain.FHIR.DTL.vR5.Model.Element.ManufacturedItemDefinition.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ManufacturedItemDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ManufacturedItemDefinition";

}
