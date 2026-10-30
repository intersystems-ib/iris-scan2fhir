Class Spain.FHIR.DTL.vR5.Model.Resource.SubstanceSourceMaterial Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sourceMaterialClass As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialClass", XMLPROJECTION = "ELEMENT");
Property sourceMaterialType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialType", XMLPROJECTION = "ELEMENT");
Property sourceMaterialState As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialState", XMLPROJECTION = "ELEMENT");
Property organismId As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "organismId", XMLPROJECTION = "ELEMENT");
Property organismName As %String(MAXLEN = 1000000, XMLNAME = "organismName", XMLPROJECTION = "ATTRIBUTE");
Property parentSubstanceId As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "parentSubstanceId", XMLPROJECTION = "ELEMENT");
Property parentSubstanceName As list Of %String(MAXLEN = 1000000, XMLNAME = "parentSubstanceName", XMLPROJECTION = "ELEMENT");
Property countryOfOrigin As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "countryOfOrigin", XMLPROJECTION = "ELEMENT");
Property geographicalLocation As list Of %String(MAXLEN = 1000000, XMLNAME = "geographicalLocation", XMLPROJECTION = "ELEMENT");
Property developmentStage As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "developmentStage", XMLPROJECTION = "ELEMENT");
Property fractionDescription As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.fractionDescription(XMLNAME = "fractionDescription", XMLPROJECTION = "ELEMENT");
Property organism As Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism(XMLNAME = "organism", XMLPROJECTION = "ELEMENT");
Property partDescription As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.partDescription(XMLNAME = "partDescription", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial";

}

