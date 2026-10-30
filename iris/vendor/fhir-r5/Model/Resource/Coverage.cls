Class Spain.FHIR.DTL.vR5.Model.Resource.Coverage Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property paymentBy As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.paymentBy(XMLNAME = "paymentBy", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property policyHolder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "policyHolder", XMLPROJECTION = "ELEMENT");
Property subscriber As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subscriber", XMLPROJECTION = "ELEMENT");
Property subscriberId As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "subscriberId", XMLPROJECTION = "ELEMENT");
Property beneficiary As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "beneficiary", XMLPROJECTION = "ELEMENT") [ Required ];
Property dependent As %String(MAXLEN = 1000000, XMLNAME = "dependent", XMLPROJECTION = "ATTRIBUTE");
Property relationship As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property insurer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");
Property class As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.class(XMLNAME = "class", XMLPROJECTION = "ELEMENT");
Property order As %Integer(XMLNAME = "order", XMLPROJECTION = "ATTRIBUTE");
Property network As %String(MAXLEN = 1000000, XMLNAME = "network", XMLPROJECTION = "ATTRIBUTE");
Property costToBeneficiary As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.costToBeneficiary(XMLNAME = "costToBeneficiary", XMLPROJECTION = "ELEMENT");
Property subrogation As %Boolean(XMLNAME = "subrogation", XMLPROJECTION = "ATTRIBUTE");
Property contract As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "contract", XMLPROJECTION = "ELEMENT");
Property insurancePlan As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurancePlan", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage";

}
