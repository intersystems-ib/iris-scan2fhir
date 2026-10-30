Class Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Code defined by a terminology system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property concept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "concept", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Reference.
Property reference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeableReference";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeableReference";

}
