Class Spain.FHIR.DTL.vR5.Model.Resource.CoverageEligibilityResponse Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property purpose As list Of %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ELEMENT") [ Required ];
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property event As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.event(XMLNAME = "event", XMLPROJECTION = "ELEMENT");
Property servicedDate As %String(MAXLEN = 1000000, XMLNAME = "servicedDate", XMLPROJECTION = "ATTRIBUTE");
Property servicedPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "servicedPeriod", XMLPROJECTION = "ELEMENT");
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property requestor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");
Property request As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT") [ Required ];
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");
Property insurer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT") [ Required ];
Property insurance As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");
Property preAuthRef As %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ATTRIBUTE");
Property form As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "form", XMLPROJECTION = "ELEMENT");
Property error As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.error(XMLNAME = "error", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse";

}

