Class Spain.FHIR.DTL.vR5.Model.Element.Availability.availableTime Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// String
/// <p>
/// Days of week available.
/// <p>
Property daysOfWeek As list Of %String(MAXLEN = 1000000, XMLNAME = "daysOfWeek", XMLPROJECTION = "ELEMENT");

/// Boolean
/// <p>
/// Is all day.
/// <p>
Property allDay As %Boolean(XMLNAME = "allDay", XMLPROJECTION = "ATTRIBUTE");

/// Time
/// <p>
/// Start time.
/// <p>
Property availableStartTime As %String(MAXLEN = 1000000, XMLNAME = "availableStartTime", XMLPROJECTION = "ATTRIBUTE");

/// Time
/// <p>
/// End time.
/// <p>
Property availableEndTime As %String(MAXLEN = 1000000, XMLNAME = "availableEndTime", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Availability.availableTime";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Availability.availableTime";

}
