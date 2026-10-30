Class Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.contributorship.entry Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property contributor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "contributor", XMLPROJECTION = "ELEMENT") [ Required ];
Property forenameInitials As %String(MAXLEN = 1000000, XMLNAME = "forenameInitials", XMLPROJECTION = "ATTRIBUTE");
Property affiliation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "affiliation", XMLPROJECTION = "ELEMENT");
Property contributionType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "contributionType", XMLPROJECTION = "ELEMENT");
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property contributionInstance As list Of Spain.FHIR.DTL.vR5.Model.Element.Citation.citedArtifact.contributorship.entry.contributionInstance(XMLNAME = "contributionInstance", XMLPROJECTION = "ELEMENT");
Property correspondingContact As %Boolean(XMLNAME = "correspondingContact", XMLPROJECTION = "ATTRIBUTE");
Property rankingOrder As %Integer(XMLNAME = "rankingOrder", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Citation.citedArtifact.contributorship.entry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Citation.citedArtifact.contributorship.entry";

}
