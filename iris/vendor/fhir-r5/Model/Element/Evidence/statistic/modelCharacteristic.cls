Class Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.modelCharacteristic Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property value As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "value", XMLPROJECTION = "ELEMENT");
Property variable As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.modelCharacteristic.variable(XMLNAME = "variable", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence.statistic.modelCharacteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence.statistic.modelCharacteristic";

}
