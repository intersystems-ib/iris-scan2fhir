Class Spain.FHIR.DTL.vR5.Model.Element.FamilyMemberHistory.procedure Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code
/// <p>
Property code As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Code
/// <p>
Property outcome As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

/// Boolean
/// <p>
/// Contributed to death
/// <p>
Property contributedToDeath As %Boolean(XMLNAME = "contributedToDeath", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// When the procedure occurred.
Property performedAge As HS.FHIR.DTL.vR4.Model.Datatype.Age(XMLNAME = "performedAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the procedure occurred.
Property performedDateTime As %String(MAXLEN = 1000000, XMLNAME = "performedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the procedure occurred.
Property performedPeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "performedPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When the procedure occurred.
Property performedRange As HS.FHIR.DTL.vR4.Model.Datatype.Range(XMLNAME = "performedRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When the procedure occurred.
Property performedString As %String(MAXLEN = 1000000, XMLNAME = "performedString", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Note
/// <p>
Property note As HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "FamilyMemberHistory.procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "FamilyMemberHistory.procedure";

}
