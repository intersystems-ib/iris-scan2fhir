Class Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.agent Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property role As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property who As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT") [ Required ];
Property requestor As %Boolean(XMLNAME = "requestor", XMLPROJECTION = "ATTRIBUTE");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property policy As list Of %String(MAXLEN = 1000000, XMLNAME = "policy", XMLPROJECTION = "ELEMENT");
Property networkReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "networkReference", XMLPROJECTION = "ELEMENT");
Property networkUri As %String(MAXLEN = 1000000, XMLNAME = "networkUri", XMLPROJECTION = "ATTRIBUTE");
Property networkString As %String(MAXLEN = 1000000, XMLNAME = "networkString", XMLPROJECTION = "ATTRIBUTE");
Property authorization As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "authorization", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.agent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.agent";

}

