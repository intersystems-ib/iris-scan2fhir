/// An interaction during which services are provided to the patient.
Class Spain.FHIR.DTL.vR5.Model.Resource.Encounter Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier(s) by which this encounter is known.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// planned | arrived | triaged | in-progress | onleave | finished | cancelled +
/// <p>
/// encounter-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend encounter-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Classification of patient encounter.
/// <p>
/// v3-ActEncounterCode is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActEncounterCode, 
/// you may formally EXTEND v3-ActEncounterCode to add codes to it.
Property class As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific type of encounter.
/// <p>
/// any FHIR4 code may be used; 
/// encounter-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific type of service.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Indicates the urgency of the encounter.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActPriority shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property priority As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Subject status.
/// <p>
Property subjectStatus As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectStatus", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The patient or group present at the encounter.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Episode(s) of care that this encounter should be recorded against.
/// <p>
/// EpisodeOfCare
Property episodeOfCare As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "episodeOfCare", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The ServiceRequest that initiated this encounter.
/// <p>
/// ServiceRequest
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The Care team.
/// <p>
/// ServiceRequest
Property careTeam As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of participants involved in the encounter.
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.paticipant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The appointment that scheduled this encounter.
/// <p>
/// Appointment
Property appointment As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT");

/// VirtualServiceDetail
/// <p>
/// Reason list of the encounter takes place.
/// <p>
Property virtualService As list Of Spain.FHIR.DTL.vR5.Model.Datatype.VirtualServiceDetail(XMLNAME = "virtualService", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The start and end time of the encounter.
Property actualPeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "actualPeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Planned start date.
Property plannedStartDate As %String(MAXLEN = 1000000, XMLNAME = "plannedStartDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Planned end date.
Property plannedEndDate As %String(MAXLEN = 1000000, XMLNAME = "plannedEndDate", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// Quantity of time the encounter lasted (less time absent)
Property length As HS.FHIR.DTL.vR4.Model.Datatype.Duration(XMLNAME = "length", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Reason list of the encounter takes place.
/// <p>
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.reason(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The list of diagnosis relevant to this encounter.
Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The set of accounts that may be used for billing for this Encounter.
/// <p>
/// Account
Property account As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Diet preference.
/// <p>
Property dietPreference As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "dietPreference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Special Arrangement.
/// <p>
Property specialArrangement As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialArrangement", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Special Courtesy.
/// <p>
Property specialCourtesy As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialCourtesy", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details about the admission to a healthcare service.
Property admission As Spain.FHIR.DTL.vR5.Model.Element.Encounter.admission(XMLNAME = "admission", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of locations where the patient has been.
Property location As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The organization (facility) responsible for this encounter.
/// <p>
/// Organization
Property serviceProvider As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "serviceProvider", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Another Encounter this encounter is part of.
/// <p>
/// Encounter
Property partOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter";

}
