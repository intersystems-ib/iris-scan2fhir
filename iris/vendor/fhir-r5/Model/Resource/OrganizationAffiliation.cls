Class Spain.FHIR.DTL.vR5.Model.Resource.OrganizationAffiliation Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property organization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");
Property participatingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "participatingOrganization", XMLPROJECTION = "ELEMENT");
Property network As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property specialty As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");
Property location As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property healthcareService As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OrganizationAffiliation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OrganizationAffiliation";

}
