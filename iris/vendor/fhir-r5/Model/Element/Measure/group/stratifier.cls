Class Spain.FHIR.DTL.vR5.Model.Element.Measure.group.stratifier Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property criteria As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "criteria", XMLPROJECTION = "ELEMENT");
Property groupDefinition As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "groupDefinition", XMLPROJECTION = "ELEMENT");
Property component As list Of Spain.FHIR.DTL.vR5.Model.Element.Measure.group.stratifier.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group.stratifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group.stratifier";

}
