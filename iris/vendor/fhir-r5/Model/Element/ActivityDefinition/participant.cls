Class Spain.FHIR.DTL.vR5.Model.Element.ActivityDefinition.participant Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");
Property typeCanonical As %String(MAXLEN = 1000000, XMLNAME = "typeCanonical", XMLPROJECTION = "ATTRIBUTE");
Property typeReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "typeReference", XMLPROJECTION = "ELEMENT");
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property function As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ActivityDefinition.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ActivityDefinition.participant";

}
