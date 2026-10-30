Class Spain.FHIR.DTL.vR5.Model.Element.Encounter.reason Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The reason.
/// <p>
/// Condition | Procedure
Property value As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Value
/// <p>
Property use As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "use", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.reason";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.reason";

}
