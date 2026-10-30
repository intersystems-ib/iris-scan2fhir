Class Spain.FHIR.DTL.vR5.Model.Resource.RelatedPerson Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property relationship As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property telecom As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");
Property birthDate As %String(MAXLEN = 1000000, XMLNAME = "birthDate", XMLPROJECTION = "ATTRIBUTE");
Property address As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");
Property photo As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property communication As list Of Spain.FHIR.DTL.vR5.Model.Element.RelatedPerson.communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RelatedPerson";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RelatedPerson";

}
