Class Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.progressStatus Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property state As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "state", XMLPROJECTION = "ELEMENT") [ Required ];
Property actual As %Boolean(XMLNAME = "actual", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy.progressStatus";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy.progressStatus";

}
