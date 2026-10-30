Class Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.attester Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// From where patient was admitted (physician referral, 
/// transfer)
/// <p>
/// personal | professional | legal | official
Property mode As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "mode", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Planned end date.
Property time As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who attested the document.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Organization
Property party As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.attester";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.attester";

}
