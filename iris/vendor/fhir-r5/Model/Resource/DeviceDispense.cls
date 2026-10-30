Class Spain.FHIR.DTL.vR5.Model.Resource.DeviceDispense Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property statusReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property device As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "device", XMLPROJECTION = "ELEMENT") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property receiver As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceDispense.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property preparedDate As %String(MAXLEN = 1000000, XMLNAME = "preparedDate", XMLPROJECTION = "ATTRIBUTE");
Property whenHandedOver As %String(MAXLEN = 1000000, XMLNAME = "whenHandedOver", XMLPROJECTION = "ATTRIBUTE");
Property destination As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property usageInstruction As %String(MAXLEN = 1000000, XMLNAME = "usageInstruction", XMLPROJECTION = "ATTRIBUTE");
Property eventHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDispense";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDispense";

}
