Class Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property isDerived As %Boolean(XMLNAME = "isDerived", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property preference As %String(MAXLEN = 1000000, XMLNAME = "preference", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property container As Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");
Property retentionTime As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "retentionTime", XMLPROJECTION = "ELEMENT");
Property singleUse As %Boolean(XMLNAME = "singleUse", XMLPROJECTION = "ATTRIBUTE");
Property rejectionCriterion As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "rejectionCriterion", XMLPROJECTION = "ELEMENT");
Property handling As list Of Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested.handling(XMLNAME = "handling", XMLPROJECTION = "ELEMENT");
Property testingDestination As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "testingDestination", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested";

}
