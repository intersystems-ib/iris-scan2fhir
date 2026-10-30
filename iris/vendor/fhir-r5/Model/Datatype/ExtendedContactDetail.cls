Class Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Purpose.
/// <p>
Property purpose As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// A name associated with the patient.
/// <p>
Property name As list Of HS.FHIR.DTL.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details for individual or organization.
Property telecom As list Of HS.FHIR.DTL.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Address.
Property address As HS.FHIR.DTL.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// organization
Property organization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// period
Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExtendedContactDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExtendedContactDetail";

}
