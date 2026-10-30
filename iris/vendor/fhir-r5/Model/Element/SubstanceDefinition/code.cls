Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.code Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property source As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.code";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.code";

}
