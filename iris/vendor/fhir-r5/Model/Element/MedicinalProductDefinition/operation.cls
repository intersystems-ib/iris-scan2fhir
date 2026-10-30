Class Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.operation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property effectiveDate As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectiveDate", XMLPROJECTION = "ELEMENT");
Property organization As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");
Property confidentialityIndicator As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "confidentialityIndicator", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductDefinition.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductDefinition.operation";

}
