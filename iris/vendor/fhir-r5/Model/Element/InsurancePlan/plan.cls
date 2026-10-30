Class Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.plan Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property coverageArea As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");
Property network As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");
Property generalCost As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.plan.generalCost(XMLNAME = "generalCost", XMLPROJECTION = "ELEMENT");
Property specificCost As list Of Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.plan.specificCost(XMLNAME = "specificCost", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan";

}
