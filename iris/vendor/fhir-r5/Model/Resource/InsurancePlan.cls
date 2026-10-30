Class Spain.FHIR.DTL.vR5.Model.Resource.InsurancePlan Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property alias As list Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property ownedBy As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "ownedBy", XMLPROJECTION = "ELEMENT");
Property administeredBy As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "administeredBy", XMLPROJECTION = "ELEMENT");
Property coverageArea As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
Property network As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property coverage As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.coverage(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");
Property plan As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.plan(XMLNAME = "plan", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan";

}

