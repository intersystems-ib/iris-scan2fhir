Class Spain.FHIR.DTL.vR5.Model.Resource.EncounterHistory Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property class As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT") [ Required ];
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property serviceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property subjectStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subjectStatus", XMLPROJECTION = "ELEMENT");
Property actualPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "actualPeriod", XMLPROJECTION = "ELEMENT");
Property plannedStartDate As %String(MAXLEN = 1000000, XMLNAME = "plannedStartDate", XMLPROJECTION = "ATTRIBUTE");
Property plannedEndDate As %String(MAXLEN = 1000000, XMLNAME = "plannedEndDate", XMLPROJECTION = "ATTRIBUTE");
Property length As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "length", XMLPROJECTION = "ELEMENT");
Property location As list Of Spain.FHIR.DTL.vR5.Model.Element.EncounterHistory.location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EncounterHistory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EncounterHistory";

}
