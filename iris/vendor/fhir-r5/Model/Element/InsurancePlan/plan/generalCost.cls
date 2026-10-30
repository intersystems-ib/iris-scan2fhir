Class Spain.FHIR.DTL.vR5.Model.Element.InsurancePlan.plan.generalCost Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property groupSize As %Integer(XMLNAME = "groupSize", XMLPROJECTION = "ATTRIBUTE");
Property cost As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "cost", XMLPROJECTION = "ELEMENT");
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.generalCost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.generalCost";

}
