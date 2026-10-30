Class Spain.FHIR.DTL.vR5.Model.Resource.ChargeItem Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property definitionUri As list Of %String(MAXLEN = 1000000, XMLNAME = "definitionUri", XMLPROJECTION = "ELEMENT");
Property definitionCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "definitionCanonical", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");
Property occurrencePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");
Property occurrenceTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Element.ChargeItem.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property performingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performingOrganization", XMLPROJECTION = "ELEMENT");
Property requestingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requestingOrganization", XMLPROJECTION = "ELEMENT");
Property costCenter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "costCenter", XMLPROJECTION = "ELEMENT");
Property quantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");
Property bodysite As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "bodysite", XMLPROJECTION = "ELEMENT");
Property unitPriceComponent As Spain.FHIR.DTL.vR5.Model.Datatype.MonetaryComponent(XMLNAME = "unitPriceComponent", XMLPROJECTION = "ELEMENT");
Property totalPriceComponent As Spain.FHIR.DTL.vR5.Model.Datatype.MonetaryComponent(XMLNAME = "totalPriceComponent", XMLPROJECTION = "ELEMENT");
Property overrideReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "overrideReason", XMLPROJECTION = "ELEMENT");
Property enterer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");
Property enteredDate As %String(MAXLEN = 1000000, XMLNAME = "enteredDate", XMLPROJECTION = "ATTRIBUTE");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property service As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "service", XMLPROJECTION = "ELEMENT");
Property product As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "product", XMLPROJECTION = "ELEMENT");
Property account As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItem";

}

