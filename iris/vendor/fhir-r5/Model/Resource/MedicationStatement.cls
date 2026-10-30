/// Record of medication being taken by a patient.
Class Spain.FHIR.DTL.vR5.Model.Resource.MedicationStatement Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfils plan, 
/// proposal or order.
/// <p>
/// MedicationRequest | CarePlan | ServiceRequest
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// Procedure | MedicationStatement
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// recorded | draft | entered-in-error
/// <p>
/// medication-statement-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medication-statement-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Type of medication usage.
/// <p>
/// medication-statement-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in medication-statement-category, 
/// you may use codes from any ValueSet.
Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What medication was taken.
/// <p>
Property medication As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "medication", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who is/was taking  the medication.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter / Episode associated with MedicationStatement.
/// <p>
/// Encounter | EpisodeOfCare
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date/time or interval when the medication is/was/will be taken.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The date/time or interval when the medication is/was/will be taken.
Property effectivePeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Time of occurence
Property effectiveTiming As HS.FHIR.DTL.vR4.Model.Datatype.Timing(XMLNAME = "effectiveTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the statement was asserted?
Property dateAsserted As %String(MAXLEN = 1000000, XMLNAME = "dateAsserted", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Person or organization that provided the information about the taking of this medication.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Organization
Property informationSource As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional supporting information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property derivedFrom As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

/// CodeableReference
/// <p>
/// Reason for why the medication is being/was taken.
/// <p>
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Further information about the statement.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional supporting information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property relatedClinicalInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "relatedClinicalInformation", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Dosage instruction
Property renderedDossageInstruction As %String(MAXLEN = 1000000, XMLNAME = "renderedDossageInstruction", XMLPROJECTION = "ATTRIBUTE");

/// Dosage
/// <p>
/// Details of how medication is/was taken or should be taken.
Property dosage As list Of HS.FHIR.DTL.vR4.Model.Element.Dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

/// Adherence
/// <p>
/// Details of adherence.
Property adherence As Spain.FHIR.DTL.vR5.Model.Element.MedicationStatement.adherence(XMLNAME = "adherence", XMLPROJECTION = "ELEMENT");



// BEGIN GENERATED FHIR R5 PROPERTIES
Property renderedDosageInstruction As %String(MAXLEN = 1000000, XMLNAME = "renderedDosageInstruction", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationStatement";

}
