Class Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate.monthlyTemplate Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Recurs on a specific day of the month
Property dayOfMonth As %Integer(XMLNAME = "dayOfMonth", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Indicates which week of the month the appointment should occur.
/// <p>
Property nthWeekOfMonth As HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "nthWeekOfMonth", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Indicates which week of the month the appointment should occur.
/// <p>
Property dayOfWeek As HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "dayOfWeek", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Recurs every nth month
Property monthInterval As %Integer(XMLNAME = "monthInterval", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment.recurrenceTemplate.monthlyTemplate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment.recurrenceTemplate.monthlyTemplate";

}
