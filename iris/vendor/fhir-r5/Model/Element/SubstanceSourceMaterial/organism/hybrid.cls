Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceSourceMaterial.organism.hybrid Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property maternalOrganismId As %String(MAXLEN = 1000000, XMLNAME = "maternalOrganismId", XMLPROJECTION = "ATTRIBUTE");
Property maternalOrganismName As %String(MAXLEN = 1000000, XMLNAME = "maternalOrganismName", XMLPROJECTION = "ATTRIBUTE");
Property paternalOrganismId As %String(MAXLEN = 1000000, XMLNAME = "paternalOrganismId", XMLPROJECTION = "ATTRIBUTE");
Property paternalOrganismName As %String(MAXLEN = 1000000, XMLNAME = "paternalOrganismName", XMLPROJECTION = "ATTRIBUTE");
Property hybridType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "hybridType", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism.hybrid";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism.hybrid";

}
