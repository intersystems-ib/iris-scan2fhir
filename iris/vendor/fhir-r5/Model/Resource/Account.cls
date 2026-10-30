Class Spain.FHIR.DTL.vR5.Model.Resource.Account Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property billingStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "billingStatus", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property subject As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property servicePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "servicePeriod", XMLPROJECTION = "ELEMENT");
Property coverage As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.coverage(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");
Property owner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property guarantor As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.guarantor(XMLNAME = "guarantor", XMLPROJECTION = "ELEMENT");
Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");
Property procedure As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");
Property relatedAccount As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.relatedAccount(XMLNAME = "relatedAccount", XMLPROJECTION = "ELEMENT");
Property currency As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "currency", XMLPROJECTION = "ELEMENT");
Property balance As list Of Spain.FHIR.DTL.vR5.Model.Element.Account.balance(XMLNAME = "balance", XMLPROJECTION = "ELEMENT");
Property calculatedAt As %String(MAXLEN = 1000000, XMLNAME = "calculatedAt", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account";

}
