Class Spain.FHIR.DTL.vR5.Model.Element.Immunization.programEligibility Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The reason.
/// <p>
/// Condition | Procedure
Property program As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Value
/// <p>
Property programStatus As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "use", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.programEligibility";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.programEligibility";

}
