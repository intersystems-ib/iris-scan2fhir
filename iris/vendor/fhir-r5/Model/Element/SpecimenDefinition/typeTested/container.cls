Class Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested.container Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property material As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property cap As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "cap", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property capacity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "capacity", XMLPROJECTION = "ELEMENT");
Property minimumVolumeQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "minimumVolumeQuantity", XMLPROJECTION = "ELEMENT");
Property minimumVolumeString As %String(MAXLEN = 1000000, XMLNAME = "minimumVolumeString", XMLPROJECTION = "ATTRIBUTE");
Property additive As list Of Spain.FHIR.DTL.vR5.Model.Element.SpecimenDefinition.typeTested.container.additive(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");
Property preparation As %String(MAXLEN = 1000000, XMLNAME = "preparation", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested.container";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested.container";

}
