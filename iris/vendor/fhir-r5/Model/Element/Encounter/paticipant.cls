Class Spain.FHIR.DTL.vR5.Model.Element.Encounter.paticipant Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Role of participant in encounter.
/// <p>
/// encounter-participant-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-participant-type, 
/// you may formally EXTEND encounter-participant-type to add codes to it.
Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Period of time during the encounter that the participant participated.
Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Persons involved in the encounter other than the patient.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson
Property actor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.paticipant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.paticipant";

}

