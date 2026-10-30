Class Spain.FHIR.DTL.vR5.Model.Resource.Person Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property telecom As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");
Property birthDate As %String(MAXLEN = 1000000, XMLNAME = "birthDate", XMLPROJECTION = "ATTRIBUTE");
Property deceasedBoolean As %Boolean(XMLNAME = "deceasedBoolean", XMLPROJECTION = "ATTRIBUTE");
Property deceasedDateTime As %String(MAXLEN = 1000000, XMLNAME = "deceasedDateTime", XMLPROJECTION = "ATTRIBUTE");
Property address As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");
Property maritalStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "maritalStatus", XMLPROJECTION = "ELEMENT");
Property photo As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");
Property communication As list Of Spain.FHIR.DTL.vR5.Model.Element.Person.communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");
Property managingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");
Property link As list Of Spain.FHIR.DTL.vR5.Model.Element.Person.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Person";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Person";

}
