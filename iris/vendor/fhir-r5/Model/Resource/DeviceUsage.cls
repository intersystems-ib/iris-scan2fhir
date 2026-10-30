Class Spain.FHIR.DTL.vR5.Model.Resource.DeviceUsage Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property derivedFrom As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");
Property context As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");
Property timingTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");
Property timingPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");
Property dateAsserted As %String(MAXLEN = 1000000, XMLNAME = "dateAsserted", XMLPROJECTION = "ATTRIBUTE");
Property usageStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "usageStatus", XMLPROJECTION = "ELEMENT");
Property usageReason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "usageReason", XMLPROJECTION = "ELEMENT");
Property adherence As Spain.FHIR.DTL.vR5.Model.Element.DeviceUsage.adherence(XMLNAME = "adherence", XMLPROJECTION = "ELEMENT");
Property informationSource As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");
Property device As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "device", XMLPROJECTION = "ELEMENT") [ Required ];
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceUsage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceUsage";

}
