Class Spain.FHIR.DTL.vR5.Model.Resource.Device Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property displayName As %String(MAXLEN = 1000000, XMLNAME = "displayName", XMLPROJECTION = "ATTRIBUTE");
Property definition As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
Property udiCarrier As list Of Spain.FHIR.DTL.vR5.Model.Element.Device.udiCarrier(XMLNAME = "udiCarrier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property availabilityStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "availabilityStatus", XMLPROJECTION = "ELEMENT");
Property biologicalSourceEvent As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "biologicalSourceEvent", XMLPROJECTION = "ELEMENT");
Property manufacturer As %String(MAXLEN = 1000000, XMLNAME = "manufacturer", XMLPROJECTION = "ATTRIBUTE");
Property manufactureDate As %String(MAXLEN = 1000000, XMLNAME = "manufactureDate", XMLPROJECTION = "ATTRIBUTE");
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");
Property serialNumber As %String(MAXLEN = 1000000, XMLNAME = "serialNumber", XMLPROJECTION = "ATTRIBUTE");
Property name As list Of Spain.FHIR.DTL.vR5.Model.Element.Device.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT");
Property modelNumber As %String(MAXLEN = 1000000, XMLNAME = "modelNumber", XMLPROJECTION = "ATTRIBUTE");
Property partNumber As %String(MAXLEN = 1000000, XMLNAME = "partNumber", XMLPROJECTION = "ATTRIBUTE");
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property version As list Of Spain.FHIR.DTL.vR5.Model.Element.Device.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property conformsTo As list Of Spain.FHIR.DTL.vR5.Model.Element.Device.conformsTo(XMLNAME = "conformsTo", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.Device.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property mode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "mode", XMLPROJECTION = "ELEMENT");
Property cycle As Spain.FHIR.DTL.vR5.Model.Datatype.Count(XMLNAME = "cycle", XMLPROJECTION = "ELEMENT");
Property duration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");
Property owner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
Property gateway As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "gateway", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property safety As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "safety", XMLPROJECTION = "ELEMENT");
Property parent As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Device";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Device";

}
