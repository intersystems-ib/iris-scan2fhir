Class Spain.FHIR.DTL.vR5.Model.Element.Goal.target Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property measure As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");
Property detailQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "detailQuantity", XMLPROJECTION = "ELEMENT");
Property detailRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "detailRange", XMLPROJECTION = "ELEMENT");
Property detailCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "detailCodeableConcept", XMLPROJECTION = "ELEMENT");
Property detailString As %String(MAXLEN = 1000000, XMLNAME = "detailString", XMLPROJECTION = "ATTRIBUTE");
Property detailBoolean As %Boolean(XMLNAME = "detailBoolean", XMLPROJECTION = "ATTRIBUTE");
Property detailInteger As %Integer(XMLNAME = "detailInteger", XMLPROJECTION = "ATTRIBUTE");
Property detailRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "detailRatio", XMLPROJECTION = "ELEMENT");
Property dueDate As %String(MAXLEN = 1000000, XMLNAME = "dueDate", XMLPROJECTION = "ATTRIBUTE");
Property dueDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "dueDuration", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal.target";

}
