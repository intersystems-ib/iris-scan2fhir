Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.structure.representation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property representation As %String(MAXLEN = 1000000, XMLNAME = "representation", XMLPROJECTION = "ATTRIBUTE");
Property format As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "format", XMLPROJECTION = "ELEMENT");
Property document As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "document", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.structure.representation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.structure.representation";

}
