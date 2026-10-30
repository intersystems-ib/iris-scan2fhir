Class Spain.FHIR.DTL.vR5.Model.Element.AuditEvent.source Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property site As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "site", XMLPROJECTION = "ELEMENT");
Property observer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "observer", XMLPROJECTION = "ELEMENT") [ Required ];
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.source";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.source";

}
