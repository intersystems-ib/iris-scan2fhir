Class Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate.weeklyTemplate Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Boolean
/// <p>
/// Recurs on Monday.
/// <p>
Property monday As %Boolean(XMLNAME = "monday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Tuesday.
/// <p>
Property tuesday As %Boolean(XMLNAME = "tuesday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Wednesday.
/// <p>
Property wednesday As %Boolean(XMLNAME = "wednesday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Thursday.
/// <p>
Property thursday As %Boolean(XMLNAME = "thursday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Friday.
/// <p>
Property friday As %Boolean(XMLNAME = "friday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Saturday.
/// <p>
Property saturday As %Boolean(XMLNAME = "saturday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs on Sunday.
/// <p>
Property sunday As %Boolean(XMLNAME = "sunday", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Recurs every nth week.
/// <p>
Property weekInterval As %Integer(XMLNAME = "weekInterval", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment.recurrenceTemplate.weeklyTemplate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment.recurrenceTemplate.weeklyTemplate";

}
