Class Spain.FHIR.DTL.vR5.Model.Resource.DeviceDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property udiDeviceIdentifier As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.udiDeviceIdentifier(XMLNAME = "udiDeviceIdentifier", XMLPROJECTION = "ELEMENT");
Property regulatoryIdentifier As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.regulatoryIdentifier(XMLNAME = "regulatoryIdentifier", XMLPROJECTION = "ELEMENT");
Property partNumber As %String(MAXLEN = 1000000, XMLNAME = "partNumber", XMLPROJECTION = "ATTRIBUTE");
Property manufacturer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");
Property deviceName As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.deviceName(XMLNAME = "deviceName", XMLPROJECTION = "ELEMENT");
Property modelNumber As %String(MAXLEN = 1000000, XMLNAME = "modelNumber", XMLPROJECTION = "ATTRIBUTE");
Property classification As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.classification(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");
Property conformsTo As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.conformsTo(XMLNAME = "conformsTo", XMLPROJECTION = "ELEMENT");
Property hasPart As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.hasPart(XMLNAME = "hasPart", XMLPROJECTION = "ELEMENT");
Property packaging As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.packaging(XMLNAME = "packaging", XMLPROJECTION = "ELEMENT");
Property version As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property safety As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "safety", XMLPROJECTION = "ELEMENT");
Property shelfLifeStorage As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ProductShelfLife(XMLNAME = "shelfLifeStorage", XMLPROJECTION = "ELEMENT");
Property languageCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "languageCode", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property owner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");
Property contact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");
Property link As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property material As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.material(XMLNAME = "material", XMLPROJECTION = "ELEMENT");
Property productionIdentifierInUDI As list Of %String(MAXLEN = 1000000, XMLNAME = "productionIdentifierInUDI", XMLPROJECTION = "ELEMENT");
Property guideline As Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.guideline(XMLNAME = "guideline", XMLPROJECTION = "ELEMENT");
Property correctiveAction As Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.correctiveAction(XMLNAME = "correctiveAction", XMLPROJECTION = "ELEMENT");
Property chargeItem As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.chargeItem(XMLNAME = "chargeItem", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition";

}

