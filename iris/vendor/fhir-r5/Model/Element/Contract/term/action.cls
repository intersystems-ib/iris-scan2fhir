Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term.action Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property subject As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.action.subject(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property intent As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "intent", XMLPROJECTION = "ELEMENT") [ Required ];
Property linkId As list Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];
Property context As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");
Property contextLinkId As list Of %String(MAXLEN = 1000000, XMLNAME = "contextLinkId", XMLPROJECTION = "ELEMENT");
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");
Property occurrencePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");
Property occurrenceTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");
Property requester As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");
Property requesterLinkId As list Of %String(MAXLEN = 1000000, XMLNAME = "requesterLinkId", XMLPROJECTION = "ELEMENT");
Property performerType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");
Property performerRole As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "performerRole", XMLPROJECTION = "ELEMENT");
Property performer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property performerLinkId As list Of %String(MAXLEN = 1000000, XMLNAME = "performerLinkId", XMLPROJECTION = "ELEMENT");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property reasonLinkId As list Of %String(MAXLEN = 1000000, XMLNAME = "reasonLinkId", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property securityLabelNumber As list Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.action";

}

