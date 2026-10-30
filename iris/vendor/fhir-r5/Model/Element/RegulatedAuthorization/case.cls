Class Spain.FHIR.DTL.vR5.Model.Element.RegulatedAuthorization.case Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property datePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "datePeriod", XMLPROJECTION = "ELEMENT");
Property dateDateTime As %String(MAXLEN = 1000000, XMLNAME = "dateDateTime", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RegulatedAuthorization.case";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RegulatedAuthorization.case";

}
