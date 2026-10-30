Class Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property exclude As %Boolean(XMLNAME = "exclude", XMLPROJECTION = "ATTRIBUTE");
Property definitionReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "definitionReference", XMLPROJECTION = "ELEMENT");
Property definitionCanonical As %String(MAXLEN = 1000000, XMLNAME = "definitionCanonical", XMLPROJECTION = "ATTRIBUTE");
Property definitionCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "definitionCodeableConcept", XMLPROJECTION = "ELEMENT");
Property definitionExpression As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "definitionExpression", XMLPROJECTION = "ELEMENT");
Property definitionId As %String(MAXLEN = 1000000, XMLNAME = "definitionId", XMLPROJECTION = "ATTRIBUTE");
Property definitionByTypeAndValue As Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic.definitionByTypeAndValue(XMLNAME = "definitionByTypeAndValue", XMLPROJECTION = "ELEMENT");
Property definitionByCombination As Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic.definitionByCombination(XMLNAME = "definitionByCombination", XMLPROJECTION = "ELEMENT");
Property instancesQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "instancesQuantity", XMLPROJECTION = "ELEMENT");
Property instancesRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "instancesRange", XMLPROJECTION = "ELEMENT");
Property durationQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "durationQuantity", XMLPROJECTION = "ELEMENT");
Property durationRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "durationRange", XMLPROJECTION = "ELEMENT");
Property timeFromEvent As list Of Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic.timeFromEvent(XMLNAME = "timeFromEvent", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceVariable.characteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceVariable.characteristic";

}
