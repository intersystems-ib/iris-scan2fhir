Class Spain.FHIR.DTL.vR5.Model.Resource.MedicationDispense Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Based on
/// <p>
/// CarePlan
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Event that dispense is part of.
/// <p>
/// Procedure
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown
/// <p>
/// medicationdispense-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationdispense-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableReference
/// <p>
/// Why a dispense was not performed.
/// <p>
Property notPerformedReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "notPerformedReason", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When product was given out.
Property statusChanged As %String(MAXLEN = 1000000, XMLNAME = "statusChanged", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of medication dispense.
/// <p>
/// medicationdispense-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in medicationdispense-category, 
/// you may use codes from any ValueSet.
Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// What medication was supplied.
/// <p>
Property medication As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "medication", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who the dispense is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter / Episode associated with event.
/// <p>
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information that supports the dispensing of the medication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who performed event.
Property performer As list Of HS.FHIR.DTL.vR4.Model.Element.MedicationDispense.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the dispense occurred.
/// <p>
/// Location
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Medication order that authorizes the dispense.
/// <p>
/// MedicationRequest
Property authorizingPrescription As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authorizingPrescription", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Trial fill, 
/// partial fill, 
/// emergency fill, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActPharmacySupplyType shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount dispensed.
Property quantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of medication expressed as a timing amount.
Property daysSupply As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "daysSupply", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When product was recorded.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When product was packaged and reviewed.
Property whenPrepared As %String(MAXLEN = 1000000, XMLNAME = "whenPrepared", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When product was given out.
Property whenHandedOver As %String(MAXLEN = 1000000, XMLNAME = "whenHandedOver", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Where the medication was sent.
/// <p>
/// Location
Property destination As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who collected the medication.
/// <p>
/// Patient | Practitioner
Property receiver As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Information about the dispense.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// When product was given out.
Property renderedDosageInstruction As %String(MAXLEN = 1000000, XMLNAME = "renderedDosageInstruction", XMLPROJECTION = "ATTRIBUTE");

/// Dosage
/// <p>
/// How the medication is to be used by the patient or administered by the caregiver.
Property dosageInstruction As list Of Spain.FHIR.DTL.vR5.Model.Element.Dosage(XMLNAME = "dosageInstruction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Whether a substitution was performed on the dispense.
Property substitution As HS.FHIR.DTL.vR4.Model.Element.MedicationDispense.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A list of relevant lifecycle events.
/// <p>
/// Provenance
Property eventHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationDispense";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationDispense";

}
