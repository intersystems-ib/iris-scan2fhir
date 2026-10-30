Class Spain.FHIR.DTL.vR5.Model.Element.Availability.notAvailableTime Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// String
/// <p>
/// Ddescription.
/// <p>
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// During.
/// <p>
Property during As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "during", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Availability.notAvailableTime";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Availability.notAvailableTime";

}
