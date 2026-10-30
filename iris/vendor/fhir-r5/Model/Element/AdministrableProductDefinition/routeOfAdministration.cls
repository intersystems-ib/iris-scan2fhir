Class Spain.FHIR.DTL.vR5.Model.Element.AdministrableProductDefinition.routeOfAdministration Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property firstDose As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "firstDose", XMLPROJECTION = "ELEMENT");
Property maxSingleDose As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "maxSingleDose", XMLPROJECTION = "ELEMENT");
Property maxDosePerDay As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "maxDosePerDay", XMLPROJECTION = "ELEMENT");
Property maxDosePerTreatmentPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "maxDosePerTreatmentPeriod", XMLPROJECTION = "ELEMENT");
Property maxTreatmentPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "maxTreatmentPeriod", XMLPROJECTION = "ELEMENT");
Property targetSpecies As list Of Spain.FHIR.DTL.vR5.Model.Element.AdministrableProductDefinition.routeOfAdministration.targetSpecies(XMLNAME = "targetSpecies", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdministrableProductDefinition.routeOfAdministration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdministrableProductDefinition.routeOfAdministration";

}
