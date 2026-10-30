Class Spain.FHIR.DTL.vR5.Model.Element.Immunization.reaction Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// dateTime
/// <p>
/// Planned end date.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Manifestacion.
/// <p>
/// manifestation
Property manifestation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "manifestation", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Reported.
Property reported As %Boolean(XMLNAME = "reported", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.reaction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.reaction";

}
