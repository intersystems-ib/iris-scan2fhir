Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.characterization Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property technique As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "technique", XMLPROJECTION = "ELEMENT");
Property form As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "form", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property file As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "file", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.characterization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.characterization";

}
