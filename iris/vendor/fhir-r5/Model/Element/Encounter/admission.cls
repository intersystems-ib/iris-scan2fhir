Class Spain.FHIR.DTL.vR5.Model.Element.Encounter.admission Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Pre-admission identifier.
Property preAdmissionIdentifier As HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "preAdmissionIdentifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The location/organization from which the patient came before admission.
/// <p>
/// Location | Organization
Property origin As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// From where patient was admitted (physician referral, 
/// transfer)
/// <p>
/// encounter-admit-source is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-admit-source, 
/// you may use codes from any ValueSet.
Property admitSource As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "admitSource", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of hospital re-admission that has occurred (if any). 
/// If the value is absent, 
/// then this is not identified as a readmission.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0092 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reAdmission As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reAdmission", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Location/organization to which the patient is discharged.
/// <p>
/// Location | Organization
Property destination As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Category or kind of location after discharge.
/// <p>
/// any FHIR4 code may be used; 
/// encounter-discharge-disposition shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property dischargeDisposition As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "dischargeDisposition", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.admission";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.admission";

}
