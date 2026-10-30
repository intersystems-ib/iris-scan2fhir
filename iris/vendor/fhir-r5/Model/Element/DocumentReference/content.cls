Class Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Where to access the document.
Property attachment As HS.FHIR.DTL.vR4.Model.Datatype.Attachment(XMLNAME = "attachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Content profile rules for the document
/// <p>
Property profile As list Of Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content.profile(XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.content";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.content";

}
