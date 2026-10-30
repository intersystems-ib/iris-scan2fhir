Class Spain.FHIR.DTL.vR5.Model.Resource.SubstanceDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property classification As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");
Property domain As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");
Property grade As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "grade", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property informationSource As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property manufacturer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property supplier As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supplier", XMLPROJECTION = "ELEMENT");
Property moiety As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.moiety(XMLNAME = "moiety", XMLPROJECTION = "ELEMENT");
Property characterization As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.characterization(XMLNAME = "characterization", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property referenceInformation As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "referenceInformation", XMLPROJECTION = "ELEMENT");
Property molecularWeight As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.molecularWeight(XMLNAME = "molecularWeight", XMLPROJECTION = "ELEMENT");
Property structure As Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.structure(XMLNAME = "structure", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.code(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property relationship As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.relationship(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");
Property nucleicAcid As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "nucleicAcid", XMLPROJECTION = "ELEMENT");
Property polymer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "polymer", XMLPROJECTION = "ELEMENT");
Property protein As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "protein", XMLPROJECTION = "ELEMENT");
Property sourceMaterial As Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.sourceMaterial(XMLNAME = "sourceMaterial", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition";

}
