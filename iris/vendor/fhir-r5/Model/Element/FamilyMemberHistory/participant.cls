Class Spain.FHIR.DTL.vR5.Model.Element.FamilyMemberHistory.participant Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of participan.
/// <p>
Property function As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Participant.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson | Device | Organization | CareTeam
Property actor As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "FamilyMemberHistory.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "FamilyMemberHistory.participant";

}
