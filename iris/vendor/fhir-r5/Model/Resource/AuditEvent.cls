Class Spain.FHIR.DTL.vR5.Model.Resource.AuditEvent Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property action As %String(MAXLEN = 1000000, XMLNAME = "action", XMLPROJECTION = "ATTRIBUTE");
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE");
Property occurredPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurredPeriod", XMLPROJECTION = "ELEMENT");
Property occurredDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurredDateTime", XMLPROJECTION = "ATTRIBUTE");
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property outcome As Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.outcome(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");
Property authorization As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "authorization", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property agent As list Of Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT") [ Required ];
Property source As Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];
Property entity As list Of Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.entity(XMLNAME = "entity", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent";

}
