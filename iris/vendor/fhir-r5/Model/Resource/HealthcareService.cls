Class Spain.FHIR.DTL.vR5.Model.Resource.HealthcareService Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property providedBy As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "providedBy", XMLPROJECTION = "ELEMENT");
Property offeredIn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "offeredIn", XMLPROJECTION = "ELEMENT");
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property specialty As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");
Property location As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
Property extraDetails As %String(MAXLEN = 1000000, XMLNAME = "extraDetails", XMLPROJECTION = "ATTRIBUTE");
Property photo As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property coverageArea As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");
Property serviceProvisionCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "serviceProvisionCode", XMLPROJECTION = "ELEMENT");
Property eligibility As list Of Spain.FHIR.DTL.vR5.Model.Element.HealthcareService.eligibility(XMLNAME = "eligibility", XMLPROJECTION = "ELEMENT");
Property program As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "program", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
Property communication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");
Property referralMethod As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "referralMethod", XMLPROJECTION = "ELEMENT");
Property appointmentRequired As %Boolean(XMLNAME = "appointmentRequired", XMLPROJECTION = "ATTRIBUTE");
Property availability As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Availability(XMLNAME = "availability", XMLPROJECTION = "ELEMENT");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HealthcareService";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HealthcareService";

}
