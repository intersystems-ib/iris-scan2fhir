Class Spain.FHIR.DTL.vR5.Model.Element.PlanDefinition.goal Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property description As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT") [ Required ];
Property priority As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");
Property start As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "start", XMLPROJECTION = "ELEMENT");
Property addresses As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");
Property documentation As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "documentation", XMLPROJECTION = "ELEMENT");
Property target As list Of Spain.FHIR.DTL.vR5.Model.Element.PlanDefinition.goal.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PlanDefinition.goal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PlanDefinition.goal";

}
