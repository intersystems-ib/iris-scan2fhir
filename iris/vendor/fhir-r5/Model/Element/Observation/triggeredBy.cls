Class Spain.FHIR.DTL.vR5.Model.Element.Observation.triggeredBy Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// observation
/// <p>
/// Observation what triggered the observation.
Property observation As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "observation", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// Code reflex | repeat | re-run.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Reason.
Property reason As %String(MAXLEN = 1000000, XMLNAME = "reason", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation.triggeredBy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.triggeredBy";

}
