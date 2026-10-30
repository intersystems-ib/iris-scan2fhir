Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property family As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "family", XMLPROJECTION = "ELEMENT");
Property genus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "genus", XMLPROJECTION = "ELEMENT");
Property species As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "species", XMLPROJECTION = "ELEMENT");
Property intraspecificType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "intraspecificType", XMLPROJECTION = "ELEMENT");
Property intraspecificDescription As %String(MAXLEN = 1000000, XMLNAME = "intraspecificDescription", XMLPROJECTION = "ATTRIBUTE");
Property author As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism.author(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property hybrid As Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism.hybrid(XMLNAME = "hybrid", XMLPROJECTION = "ELEMENT");
Property organismGeneral As Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism.organismGeneral(XMLNAME = "organismGeneral", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism";

}
