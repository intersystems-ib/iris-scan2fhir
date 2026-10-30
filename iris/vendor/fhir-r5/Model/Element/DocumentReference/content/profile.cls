Class Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content.profile Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Value coding.
/// <p>
Property valueCoding As HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// uri
/// <p>
/// valueUri.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Canonical.
/// <p>
Property canonical As %String(MAXLEN = 1000000, XMLNAME = "canonical", XMLPROJECTION = "ATTRIBUTE");



// BEGIN GENERATED FHIR R5 PROPERTIES
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.content.profile";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.content.profile";

}
