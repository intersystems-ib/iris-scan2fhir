Class Spain.FHIR.DTL.vR5.Model.Element.Transport.input Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property valueBase64Binary As %String(MAXLEN = 1000000, XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE");
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE");
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE");
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE");
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");
Property valueDecimal As %Numeric(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE");
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE");
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE");
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");
Property valueInteger64 As %BigInt(XMLNAME = "valueInteger64", XMLPROJECTION = "ATTRIBUTE");
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE");
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE");
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE");
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE");
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE");
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE");
Property valueAddress As Spain.FHIR.DTL.vR5.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT");
Property valueAge As Spain.FHIR.DTL.vR5.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT");
Property valueAnnotation As Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT");
Property valueAttachment As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");
Property valueCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");
Property valueCodeableReference As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "valueCodeableReference", XMLPROJECTION = "ELEMENT");
Property valueCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT");
Property valueContactPoint As Spain.FHIR.DTL.vR5.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT");
Property valueCount As Spain.FHIR.DTL.vR5.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT");
Property valueDistance As Spain.FHIR.DTL.vR5.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT");
Property valueDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT");
Property valueHumanName As Spain.FHIR.DTL.vR5.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT");
Property valueIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT");
Property valueMoney As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT");
Property valuePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");
Property valueQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");
Property valueRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");
Property valueRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");
Property valueRatioRange As Spain.FHIR.DTL.vR5.Model.Datatype.RatioRange(XMLNAME = "valueRatioRange", XMLPROJECTION = "ELEMENT");
Property valueReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");
Property valueSampledData As Spain.FHIR.DTL.vR5.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");
Property valueSignature As Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT");
Property valueTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT");
Property valueContactDetail As Spain.FHIR.DTL.vR5.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT");
Property valueDataRequirement As Spain.FHIR.DTL.vR5.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT");
Property valueExpression As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT");
Property valueParameterDefinition As Spain.FHIR.DTL.vR5.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT");
Property valueRelatedArtifact As Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT");
Property valueTriggerDefinition As Spain.FHIR.DTL.vR5.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT");
Property valueUsageContext As Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT");
Property valueAvailability As Spain.FHIR.DTL.vR5.Model.Datatype.Availability(XMLNAME = "valueAvailability", XMLPROJECTION = "ELEMENT");
Property valueExtendedContactDetail As Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "valueExtendedContactDetail", XMLPROJECTION = "ELEMENT");
Property valueDosage As Spain.FHIR.DTL.vR5.Model.Datatype.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT");
Property valueMeta As Spain.FHIR.DTL.vR5.Model.Datatype.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Transport.input";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Transport.input";

}
