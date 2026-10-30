Class Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.insurance.item Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property productOrService As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");
Property modifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");
Property provider As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");
Property excluded As %Boolean(XMLNAME = "excluded", XMLPROJECTION = "ATTRIBUTE");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property network As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property unit As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");
Property term As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");
Property benefit As list Of Spain.FHIR.DTL.vR5.Model.Element.CoverageEligibilityResponse.insurance.item.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT");
Property authorizationRequired As %Boolean(XMLNAME = "authorizationRequired", XMLPROJECTION = "ATTRIBUTE");
Property authorizationSupporting As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "authorizationSupporting", XMLPROJECTION = "ELEMENT");
Property authorizationUrl As %String(MAXLEN = 1000000, XMLNAME = "authorizationUrl", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance.item";

}
