Class Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property statisticType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "statisticType", XMLPROJECTION = "ELEMENT");
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property numberOfEvents As %Integer(XMLNAME = "numberOfEvents", XMLPROJECTION = "ATTRIBUTE");
Property numberAffected As %Integer(XMLNAME = "numberAffected", XMLPROJECTION = "ATTRIBUTE");
Property sampleSize As Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.sampleSize(XMLNAME = "sampleSize", XMLPROJECTION = "ELEMENT");
Property attributeEstimate As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.attributeEstimate(XMLNAME = "attributeEstimate", XMLPROJECTION = "ELEMENT");
Property modelCharacteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.Evidence.statistic.modelCharacteristic(XMLNAME = "modelCharacteristic", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence.statistic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence.statistic";

}
