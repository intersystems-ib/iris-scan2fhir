Class Spain.FHIR.DTL.vR5.Model.Resource.Procedure Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Identifiers for this procedure.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A request for this procedure.
/// <p>
/// CarePlan | ServiceRequest
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// Procedure | Observation | MedicationAdministration
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
/// <p>
/// event-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend event-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-not-performed-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification of the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Identification of the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who the procedure was performed on.
/// <p>
/// Patient | Group | Device | Practitioner | Organization | Location
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who is the target of the procedure when it is not the subject of record only.
/// <p>
/// Patient | Group | RelatedPerson | Practitioner | Organization | CareTeam | PractitionerRole | Specimen
Property focus As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// When the procedure occurred.
Property occurrenceAge As HS.FHIR.DTL.vR4.Model.Datatype.Age(XMLNAME = "occurrenceAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the procedure occurred.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the procedure occurred.
Property occurrencePeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When the procedure occurred.
Property occurrenceRange As HS.FHIR.DTL.vR4.Model.Datatype.Range(XMLNAME = "occurrenceRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When the procedure occurred.
Property occurrenceString As %String(MAXLEN = 1000000, XMLNAME = "occurrenceString", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Time of occurence
Property occurenceTiming As HS.FHIR.DTL.vR4.Model.Datatype.Timing(XMLNAME = "occurenceTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the procedure occurred.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who recorded the procedure.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole
Property recorder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Indicates if procedured is reported.
Property reportedBoolean As %Boolean(XMLNAME = "reportedBoolean", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Person who reports this procedure.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole
Property reportedReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reportedReferencebo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The people who performed the procedure.
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Element.Procedure.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the procedure happened.
/// <p>
/// Location
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Coded reason procedure performed.
/// <p>
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Target body sites.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The result of procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-outcome shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcome As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Any report resulting from the procedure.
/// <p>
/// DiagnosticReport | DocumentReference | Composition
Property report As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "report", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Complication following the procedure.
/// <p>
Property complication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "complication", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Instructions for follow up.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-followup shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property followUp As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "followUp", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional information about the procedure.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Manipulated, 
/// implanted, 
/// or removed device.
Property focalDevice As list Of HS.FHIR.DTL.vR4.Model.Element.Procedure.focalDevice(XMLNAME = "focalDevice", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Coded items used during the procedure.
/// <p>
Property used As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "used", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting info
/// <p>
Property supportingInfo As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");



// BEGIN GENERATED FHIR R5 PROPERTIES
Property occurrenceTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Procedure";

}
