Class Spain.FHIR.DTL.vR5.Model.Element.Encounter.diagnosis Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The diagnosis or procedure relevant to the encounter.
/// <p>
/// Condition | Procedure
Property condition As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Role that this diagnosis has within the encounter (e.g. 
/// admission, 
/// billing, 
/// discharge ?)
/// <p>
/// diagnosis-role is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in diagnosis-role, 
/// you may use codes from any ValueSet.
Property use As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "use", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.diagnosis";

}
