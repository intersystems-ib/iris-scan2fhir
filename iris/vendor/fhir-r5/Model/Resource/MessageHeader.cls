Class Spain.FHIR.DTL.vR5.Model.Resource.MessageHeader Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property eventCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "eventCoding", XMLPROJECTION = "ELEMENT");
Property eventCanonical As %String(MAXLEN = 1000000, XMLNAME = "eventCanonical", XMLPROJECTION = "ATTRIBUTE");
Property destination As list Of Spain.FHIR.DTL.vR5.Model.Element.MessageHeader.destination(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");
Property sender As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "sender", XMLPROJECTION = "ELEMENT");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property source As Spain.FHIR.DTL.vR5.Model.Element.MessageHeader.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];
Property responsible As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "responsible", XMLPROJECTION = "ELEMENT");
Property reason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property response As Spain.FHIR.DTL.vR5.Model.Element.MessageHeader.response(XMLNAME = "response", XMLPROJECTION = "ELEMENT");
Property focus As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageHeader";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageHeader";

}
