Class Spain.FHIR.DTL.vR5.Model.Element.Observation.referenceRange Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Simple quantity
/// <p>
/// Low.
Property low As HS.FHIR.DTL.vR4.Model.Datatype.SimpleQuantity(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

/// Simple quantity
/// <p>
/// High.
Property high As HS.FHIR.DTL.vR4.Model.Datatype.SimpleQuantity(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

/// Codeable Concept
/// <p>
/// Normal Value.
Property normalValue As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "normalValue", XMLPROJECTION = "ELEMENT");

/// Codeable Concept
/// <p>
/// Type.
Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// List of Codeable Concept
/// <p>
/// Applies to.
Property appliesTo As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "appliesTo", XMLPROJECTION = "ELEMENT");

/// Codeable Concept
/// <p>
/// Age.
Property age As HS.FHIR.DTL.vR4.Model.Datatype.Range(XMLNAME = "age", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation.referenceRange";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.referenceRange";

}
