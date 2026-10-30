Class Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.modelCharacteristic.variable Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property variableDefinition As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "variableDefinition", XMLPROJECTION = "ELEMENT") [ Required ];
Property handling As %String(MAXLEN = 1000000, XMLNAME = "handling", XMLPROJECTION = "ATTRIBUTE");
Property valueCategory As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "valueCategory", XMLPROJECTION = "ELEMENT");
Property valueQuantity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");
Property valueRange As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence.statistic.modelCharacteristic.variable";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence.statistic.modelCharacteristic.variable";

}
