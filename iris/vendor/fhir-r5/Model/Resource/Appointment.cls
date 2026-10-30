Class Spain.FHIR.DTL.vR5.Model.Resource.Appointment Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this item.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist
/// <p>
/// appointmentstatus|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend appointmentstatus|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// The coded reason for the appointment being cancelled.
/// <p>
/// any FHIR4 code may be used; 
/// appointment-cancellation-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property cancellationReason As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "cancellationReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The coded class.
/// <p>
Property class As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A broad categorization of the service that is to be performed during this appointment.
/// <p>
/// any FHIR4 code may be used; 
/// service-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceCategory As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceCategory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The specific service that is to be performed during this appointment.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The style of appointment or patient that has been booked in the slot (not service type)
/// <p>
/// v2-0276 is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0276, 
/// you may use codes from any ValueSet.
Property appointmentType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "appointmentType", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Coded reason this appointment is scheduled.
/// <p>
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// Codeable Concept
/// <p>
/// Used to make informed decisions if needing to re-prioritize.
Property priority As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Shown on a subject line in a meeting request, 
/// or appointment list.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Replaces
/// <p>
/// Appointment
Property replaces As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// VirtualServiceDetail
/// <p>
/// VirtualServiceDetail
/// <p>
Property virtualService As list Of Spain.FHIR.DTL.vR5.Model.Datatype.VirtualServiceDetail(XMLNAME = "virtualService", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional information to support the appointment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// previousAppointment
/// <p>
/// Appointment
Property previousAppointment As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "previousAppointment", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// originatingAppointment
/// <p>
/// Appointment
Property originatingAppointment As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "originatingAppointment", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When appointment is to take place.
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// When appointment is to conclude.
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Can be less than start/end (e.g. 
/// estimate)
Property minutesDuration As %Integer(XMLNAME = "minutesDuration", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The slots that this appointment is filling.
/// <p>
/// Slot
Property slot As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "slot", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The set of accounts that may be used for billing for this Appointment
/// <p>
/// Account
Property account As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date that this appointment was initially created.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// The date that this appointment was initially created.
Property cancellationDate As %String(MAXLEN = 1000000, XMLNAME = "cancellationDate", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Additional comments.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Codeable Reference
/// <p>
/// Detailed information and instructions for the patient.
Property patientInstruction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "patientInstruction", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The request this appointment is allocated to assess.
/// <p>
/// CarePlan | DeviceRequest | MedicationRequest | ServiceRequest
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The service request this appointment is allocated to assess.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Participants involved in appointment.
Property participant As list Of HS.FHIR.DTL.vR4.Model.Element.Appointment.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Potential date/time interval(s) requested to allocate the appointment within.
Property requestedPeriod As list Of HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "requestedPeriod", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// The sequence number in the recurrence.
Property recurrenceId As %Integer(XMLNAME = "recurrenceId", XMLPROJECTION = "ATTRIBUTE");

/// Boolean
/// <p>
/// Indicates that this appointment varies from a recurrence pattern.
Property occurrenceChanged As %Boolean(XMLNAME = "occurrenceChanged", XMLPROJECTION = "ATTRIBUTE");

/// recurrenceTemplate
/// <p>
/// Details of the recurrence pattern/template used to generate occurrences
Property recurrenceTemplate As list Of Spain.FHIR.DTL.vR5.Model.Element.Appointment.recurrenceTemplate(XMLNAME = "recurrenceTemplate", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment";

}
