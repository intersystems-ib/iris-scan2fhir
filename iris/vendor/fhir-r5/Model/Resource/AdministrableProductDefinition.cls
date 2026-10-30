Class Spain.FHIR.DTL.vR5.Model.Resource.AdministrableProductDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property formOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "formOf", XMLPROJECTION = "ELEMENT");
Property administrableDoseForm As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "administrableDoseForm", XMLPROJECTION = "ELEMENT");
Property unitOfPresentation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "unitOfPresentation", XMLPROJECTION = "ELEMENT");
Property producedFrom As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "producedFrom", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property device As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.AdministrableProductDefinition.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property routeOfAdministration As list Of Spain.FHIR.DTL.vR5.Model.Element.AdministrableProductDefinition.routeOfAdministration(XMLNAME = "routeOfAdministration", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdministrableProductDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdministrableProductDefinition";

}
