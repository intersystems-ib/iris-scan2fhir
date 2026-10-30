Class Spain.FHIR.DTL.vR5.Model.Element.CareTeam.participant Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property member As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "member", XMLPROJECTION = "ELEMENT");
Property onBehalfOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");
Property coveragePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "coveragePeriod", XMLPROJECTION = "ELEMENT");
Property coverageTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "coverageTiming", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CareTeam.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CareTeam.participant";

}
