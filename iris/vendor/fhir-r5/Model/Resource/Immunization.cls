Class Spain.FHIR.DTL.vR5.Model.Resource.Immunization Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Based on
/// <p>
/// Based On
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// completed | entered-in-error | not-done
/// <p>
/// immunization-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend immunization-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason not done.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// Codeable Reference
/// <p>
/// Administered Product
/// <p>
/// administeredProduct
Property administeredProduct As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "administeredProduct", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine product administered.
/// <p>
/// any FHIR4 code may be used; 
/// vaccine-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property vaccineCode As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "vaccineCode", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who was immunized.
/// <p>
/// Patient
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter immunization was part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting information.
/// <p>
/// Supporting information
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Vaccine administration date.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Vaccine administration date.
Property occurrenceString As %String(MAXLEN = 1000000, XMLNAME = "occurrenceString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Indicates context the data was recorded in.
Property primarySource As %Boolean(XMLNAME = "primarySource", XMLPROJECTION = "ATTRIBUTE");

/// Codeable Reference
/// <p>
/// Information source
/// <p>
/// informationSource
Property informationSource As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where immunization occurred.
/// <p>
/// Location
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Vaccine manufacturer.
/// <p>
/// manufacturer
Property manufacturer As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Vaccine lot number.
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Vaccine expiration date.
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Body site vaccine  was administered.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property site As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How vaccine entered body.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-route shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property route As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of vaccine administered.
Property doseQuantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "doseQuantity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who performed event.
Property performer As list Of HS.FHIR.DTL.vR4.Model.Element.Immunization.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional immunization notes.
Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reason.
/// <p>
/// reason
Property reason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Dose potency.
Property isSubpotent As %Boolean(XMLNAME = "isSubpotent", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Reason for being subpotent.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-subpotent-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subpotentReason As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subpotentReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Patient eligibility for a vaccination program.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-program-eligibility shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programEligibility As list Of Spain.FHIR.DTL.vR5.Model.Element.Immunization.programEligibility(XMLNAME = "programEligibility", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funding source for the vaccine.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-funding-source shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundingSource As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundingSource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of a reaction that follows immunization.
Property reaction As list Of Spain.FHIR.DTL.vR5.Model.Element.Immunization.reaction(XMLNAME = "reaction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Protocol followed by the provider.
Property protocolApplied As list Of Spain.FHIR.DTL.vR5.Model.Element.Immunization.protocolApplied(XMLNAME = "protocolApplied", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization";

}
