Class Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.recruitment Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property targetNumber As %Integer(XMLNAME = "targetNumber", XMLPROJECTION = "ATTRIBUTE");
Property actualNumber As %Integer(XMLNAME = "actualNumber", XMLPROJECTION = "ATTRIBUTE");
Property eligibility As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "eligibility", XMLPROJECTION = "ELEMENT");
Property actualGroup As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "actualGroup", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy.recruitment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy.recruitment";

}
