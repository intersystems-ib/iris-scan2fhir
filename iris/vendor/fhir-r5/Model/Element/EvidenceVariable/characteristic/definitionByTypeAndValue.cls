Class Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic.definitionByTypeAndValue Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property method As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property device As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");
Property valueCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");
Property valueQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");
Property valueRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");
Property valueReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE");
Property offset As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "offset", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceVariable.characteristic.definitionByTypeAndValue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceVariable.characteristic.definitionByTypeAndValue";

}
