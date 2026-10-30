Class Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.entity Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property what As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "what", XMLPROJECTION = "ELEMENT");
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property securityLabel As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");
Property query As %String(MAXLEN = 1000000, XMLNAME = "query", XMLPROJECTION = "ATTRIBUTE");
Property detail As list Of Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.entity.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.entity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.entity";

}
