/// Protocol followed by the provider.
Class Spain.FHIR.DTL.vR5.Model.Element.Immunization.protocolApplied Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of vaccine series.
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is responsible for publishing the recommendations.
/// <p>
/// Organization
Property authority As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine preventatable disease being targetted.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-target-disease shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property targetDisease As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Dose number within series.
Property doseNumber As %String(MAXLEN = 1000000, XMLNAME = "doseNumber", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Recommended number of doses for immunity.
Property seriesDoses As %String(MAXLEN = 1000000, XMLNAME = "seriesDosesString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.protocolApplied";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.protocolApplied";

}
