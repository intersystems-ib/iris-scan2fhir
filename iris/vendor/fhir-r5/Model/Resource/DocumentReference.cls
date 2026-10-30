Class Spain.FHIR.DTL.vR5.Model.Resource.DocumentReference Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Other identifiers for the document.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// version
/// <p>
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Procedure that caused this media to be created
/// <p>
/// (Appointment | AppointmentResponse | CarePlan | Claim | CommunicationRequest | Contract | CoverageEligibilityRequest | DeviceRequest | EnrollmentRequest | ImmunizationRecommendation | MedicationRequest | NutritionOrder | RequestOrchestration | ServiceRequest | SupplyRequest | VisionPrescription
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// current | superseded | entered-in-error
/// <p>
/// document-reference-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-reference-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// preliminary | final | amended | entered-in-error
/// <p>
/// composition-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend composition-status|4.0.1 and you may NOT use codes from other ValueSets.
Property docStatus As %String(MAXLEN = 1000000, XMLNAME = "docStatus", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// modality
/// <p>
Property modality As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "modality", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of document (LOINC if possible)
/// <p>
/// c80-doc-typecodes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-doc-typecodes, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Categorization of document.
/// <p>
/// any FHIR4 code may be used; 
/// document-classcodes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what is the subject of the document.
/// <p>
/// Patient | Practitioner | Group | Device
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Clinical context of document.
Property context As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Main clinical acts documented
/// <p>
Property event As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "event", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Body part included
/// <p>
Property bodySite As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of facility where patient was seen.
/// <p>
Property facilityType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "facilityType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional details about where the content was created (e.g. clinical specialty).
/// <p>
Property practiceSetting As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "practiceSetting", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// period
Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When this document reference was created.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who and/or what authored the document.
/// <p>
/// Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson | CareTeam
Property author As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// attester
/// <p>
/// Attests to accuracy of the document
/// <p>
Property attester As list Of Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.attester(XMLNAME = "attester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization which maintains the document.
/// <p>
/// Organization
Property custodian As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "custodian", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Relationships to other documents.
Property relatesTo As list Of Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.relatesTo(XMLNAME = "relatesTo", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human-readable description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Document security-tags.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property securityLabel As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Document referenced.
Property content As list Of Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content(XMLNAME = "content", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference";

}
