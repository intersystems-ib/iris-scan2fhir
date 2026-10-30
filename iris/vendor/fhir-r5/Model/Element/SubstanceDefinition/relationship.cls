Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.relationship Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property substanceDefinitionReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "substanceDefinitionReference", XMLPROJECTION = "ELEMENT");
Property substanceDefinitionCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "substanceDefinitionCodeableConcept", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property isDefining As %Boolean(XMLNAME = "isDefining", XMLPROJECTION = "ATTRIBUTE");
Property amountQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");
Property amountRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "amountRatio", XMLPROJECTION = "ELEMENT");
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");
Property ratioHighLimitAmount As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "ratioHighLimitAmount", XMLPROJECTION = "ELEMENT");
Property comparator As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "comparator", XMLPROJECTION = "ELEMENT");
Property source As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.relationship";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.relationship";

}
