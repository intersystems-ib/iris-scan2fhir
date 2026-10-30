Class Spain.FHIR.DTL.vR5.Model.Resource.AppointmentResponse Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property appointment As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT") [ Required ];
Property proposedNewTime As %Boolean(XMLNAME = "proposedNewTime", XMLPROJECTION = "ATTRIBUTE");
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");
Property participantType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "participantType", XMLPROJECTION = "ELEMENT");
Property actor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");
Property participantStatus As %String(MAXLEN = 1000000, XMLNAME = "participantStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
Property recurring As %Boolean(XMLNAME = "recurring", XMLPROJECTION = "ATTRIBUTE");
Property occurrenceDate As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDate", XMLPROJECTION = "ATTRIBUTE");
Property recurrenceId As %Integer(XMLNAME = "recurrenceId", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AppointmentResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AppointmentResponse";

}
