Class Spain.FHIR.DTL.vR5.Model.Resource.Slot Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property serviceCategory As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "serviceCategory", XMLPROJECTION = "ELEMENT");
Property serviceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");
Property specialty As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");
Property appointmentType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "appointmentType", XMLPROJECTION = "ELEMENT");
Property schedule As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT") [ Required ];
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property overbooked As %Boolean(XMLNAME = "overbooked", XMLPROJECTION = "ATTRIBUTE");
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Slot";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Slot";

}
