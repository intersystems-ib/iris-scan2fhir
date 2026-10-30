Class Spain.FHIR.DTL.vR5.Model.Element.EvidenceVariable.characteristic.timeFromEvent Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property eventCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "eventCodeableConcept", XMLPROJECTION = "ELEMENT");
Property eventReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "eventReference", XMLPROJECTION = "ELEMENT");
Property eventDateTime As %String(MAXLEN = 1000000, XMLNAME = "eventDateTime", XMLPROJECTION = "ATTRIBUTE");
Property eventId As %String(MAXLEN = 1000000, XMLNAME = "eventId", XMLPROJECTION = "ATTRIBUTE");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property range As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "range", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceVariable.characteristic.timeFromEvent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceVariable.characteristic.timeFromEvent";

}
