Class Spain.FHIR.DTL.vR5.Model.Datatype.Identifier Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property assigner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "assigner", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Identifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Identifier";

}
