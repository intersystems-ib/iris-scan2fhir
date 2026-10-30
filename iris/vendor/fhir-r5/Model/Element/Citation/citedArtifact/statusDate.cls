Class Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.statusDate Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property activity As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "activity", XMLPROJECTION = "ELEMENT") [ Required ];
Property actual As %Boolean(XMLNAME = "actual", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Citation.citedArtifact.statusDate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Citation.citedArtifact.statusDate";

}
