Class Spain.FHIR.DTL.vR5.Model.Resource.MedicinalProductDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property domain As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property combinedPharmaceuticalDoseForm As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "combinedPharmaceuticalDoseForm", XMLPROJECTION = "ELEMENT");
Property route As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");
Property indication As %String(MAXLEN = 1000000, XMLNAME = "indication", XMLPROJECTION = "ATTRIBUTE");
Property legalStatusOfSupply As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "legalStatusOfSupply", XMLPROJECTION = "ELEMENT");
Property additionalMonitoringIndicator As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "additionalMonitoringIndicator", XMLPROJECTION = "ELEMENT");
Property specialMeasures As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialMeasures", XMLPROJECTION = "ELEMENT");
Property pediatricUseIndicator As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "pediatricUseIndicator", XMLPROJECTION = "ELEMENT");
Property classification As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");
Property marketingStatus As list Of Spain.FHIR.DTL.vR5.Model.Datatype.MarketingStatus(XMLNAME = "marketingStatus", XMLPROJECTION = "ELEMENT");
Property packagedMedicinalProduct As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "packagedMedicinalProduct", XMLPROJECTION = "ELEMENT");
Property comprisedOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "comprisedOf", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property impurity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "impurity", XMLPROJECTION = "ELEMENT");
Property attachedDocument As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "attachedDocument", XMLPROJECTION = "ELEMENT");
Property masterFile As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "masterFile", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property clinicalTrial As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "clinicalTrial", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT") [ Required ];
Property crossReference As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.crossReference(XMLNAME = "crossReference", XMLPROJECTION = "ELEMENT");
Property operation As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductDefinition";

}
