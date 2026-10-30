Class Spain.FHIR.DTL.vR5.Model.Resource.PractitionerRole Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property practitioner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "practitioner", XMLPROJECTION = "ELEMENT");
Property organization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property specialty As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");
Property location As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property healthcareService As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
Property communication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");
Property availability As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Availability(XMLNAME = "availability", XMLPROJECTION = "ELEMENT");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PractitionerRole";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PractitionerRole";

}
