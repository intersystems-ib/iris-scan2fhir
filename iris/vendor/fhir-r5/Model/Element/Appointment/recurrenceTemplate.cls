Class Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The timezone of the occurrences
/// <p>
Property timezone As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "timezone", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The frequency of the recurrence
/// <p>
Property recurrenceType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "recurrenceType", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Description of the event as a whole.
Property lastOccurrenceDate As %String(MAXLEN = 1000000, XMLNAME = "lastOccurrenceDate", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Description of the event as a whole.
Property occurrenceCount As %Integer(XMLNAME = "occurrenceCount", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Description of the event as a whole.
Property occurrenceDate As list Of %String(MAXLEN = 1000000, XMLNAME = "occurrenceDate", XMLPROJECTION = "ELEMENT");

/// WeeklyTemplate
/// <p>
/// Information about weekly recurring appointments
/// <p>
Property weeklyTemplate As Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate.weeklyTemplate(XMLNAME = "weeklyTemplate", XMLPROJECTION = "ELEMENT");

/// WeeklyTemplate
/// <p>
/// Information about monthly recurring appointments
/// <p>
Property monthlyTemplate As Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate.monthlyTemplate(XMLNAME = "monthlyTemplate", XMLPROJECTION = "ELEMENT");

/// WeeklyTemplate
/// <p>
/// Information about yearly recurring appointments
/// <p>
Property yearlyTemplate As Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate.weeklyTemplate(XMLNAME = "weeklyTemplate", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Any dates that should be excluded from the series
Property excludingDate As list Of %String(MAXLEN = 1000000, XMLNAME = "excludingDate", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Any dates that should be excluded from the series
Property excludingRecurrenceId As list Of %Integer(XMLNAME = "excludingRecurrenceId", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment.recurrenceTemplate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment.recurrenceTemplate";

}
