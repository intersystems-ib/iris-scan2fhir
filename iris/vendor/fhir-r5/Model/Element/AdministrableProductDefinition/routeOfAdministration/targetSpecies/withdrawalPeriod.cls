Class Spain.FHIR.DTL.vR5.Model.Element.AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property tissue As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "tissue", XMLPROJECTION = "ELEMENT") [ Required ];
Property value As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Required ];
Property supportingInformation As %String(MAXLEN = 1000000, XMLNAME = "supportingInformation", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod";

}
