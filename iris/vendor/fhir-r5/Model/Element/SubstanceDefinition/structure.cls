Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.structure Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property stereochemistry As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "stereochemistry", XMLPROJECTION = "ELEMENT");
Property opticalActivity As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "opticalActivity", XMLPROJECTION = "ELEMENT");
Property molecularFormula As %String(MAXLEN = 1000000, XMLNAME = "molecularFormula", XMLPROJECTION = "ATTRIBUTE");
Property molecularFormulaByMoiety As %String(MAXLEN = 1000000, XMLNAME = "molecularFormulaByMoiety", XMLPROJECTION = "ATTRIBUTE");
Property technique As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "technique", XMLPROJECTION = "ELEMENT");
Property sourceDocument As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "sourceDocument", XMLPROJECTION = "ELEMENT");
Property representation As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.structure.representation(XMLNAME = "representation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.structure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.structure";

}
