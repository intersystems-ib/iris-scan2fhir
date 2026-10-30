Class Spain.FHIR.DTL.vR5.Model.Resource.MedicationRequest Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External ids for this request.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown
/// <p>
/// medicationrequest-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationrequest-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When status changed.
Property statusChanged As %String(MAXLEN = 1000000, XMLNAME = "statusChanged", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// medicationrequest-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationrequest-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Type of medication usage.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// True if request is prohibiting action.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Reported rather than primary record.
Property reported As %Boolean(XMLNAME = "reported", XMLPROJECTION = "ATTRIBUTE");

/// CodeableReference
/// <p>
/// Medication to be taken.
/// <p>
Property medication As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "medication", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who or group medication request is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Information source
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Organization
Property informationSource As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of encounter/admission/stay.
/// <p>
/// Encounter
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information to support ordering of the medication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When request was initially authored.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who/What requested the Request.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Intended performer of administration.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | DeviceDefinition | RelatedPerson | CareTeam | HealthcareService
Property performer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Desired kind of performer of the medication administration.
/// <p>
/// any FHIR4 code may be used; 
/// performer-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Device.
/// <p>
Property device As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person who entered the request.
/// <p>
/// Practitioner | PractitionerRole
Property recorder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Reason or indication for ordering or not ordering the medication.
/// <p>
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What request fulfills.
/// <p>
/// CarePlan | MedicationRequest | ServiceRequest | ImmunizationRecommendation
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Composite request this is part of.
Property groupIdentifier As HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Overall pattern of medication administration.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-course-of-therapy shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property courseOfTherapyType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "courseOfTherapyType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated insurance coverage.
/// <p>
/// Coverage | ClaimResponse
Property insurance As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Information about the prescription.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// renderedDosageInstruction
Property renderedDosageInstruction As %String(MAXLEN = 1000000, XMLNAME = "renderedDosageInstruction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Efective dose period.
/// <p>
Property efectiveDosePeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "efectiveDosePeriod", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// How the medication should be taken.
Property dosageInstruction As list Of Spain.FHIR.DTL.vR5.Model.Element.Dosage(XMLNAME = "dosageInstruction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Medication supply authorization.
Property dispenseRequest As Spain.FHIR.DTL.vR5.Model.Element.MedicationRequest.dispenseRequest(XMLNAME = "dispenseRequest", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Any restrictions on medication substitution.
Property substitution As HS.FHIR.DTL.vR4.Model.Element.MedicationRequest.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// An order/prescription that is being replaced.
/// <p>
/// MedicationRequest
Property priorPrescription As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "priorPrescription", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A list of events of interest in the lifecycle.
/// <p>
/// Provenance
Property eventHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");



// BEGIN GENERATED FHIR R5 PROPERTIES
Property effectiveDosePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectiveDosePeriod", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest";

}
