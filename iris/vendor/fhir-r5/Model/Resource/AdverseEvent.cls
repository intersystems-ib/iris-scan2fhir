Class Spain.FHIR.DTL.vR5.Model.Resource.AdverseEvent Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property actuality As %String(MAXLEN = 1000000, XMLNAME = "actuality", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");
Property occurrencePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");
Property occurrenceTiming As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");
Property detected As %String(MAXLEN = 1000000, XMLNAME = "detected", XMLPROJECTION = "ATTRIBUTE");
Property recordedDate As %String(MAXLEN = 1000000, XMLNAME = "recordedDate", XMLPROJECTION = "ATTRIBUTE");
Property resultingEffect As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "resultingEffect", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property seriousness As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "seriousness", XMLPROJECTION = "ELEMENT");
Property outcome As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");
Property recorder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");
Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");
Property study As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "study", XMLPROJECTION = "ELEMENT");
Property expectedInResearchStudy As %Boolean(XMLNAME = "expectedInResearchStudy", XMLPROJECTION = "ATTRIBUTE");
Property suspectEntity As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.suspectEntity(XMLNAME = "suspectEntity", XMLPROJECTION = "ELEMENT");
Property contributingFactor As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.contributingFactor(XMLNAME = "contributingFactor", XMLPROJECTION = "ELEMENT");
Property preventiveAction As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.preventiveAction(XMLNAME = "preventiveAction", XMLPROJECTION = "ELEMENT");
Property mitigatingAction As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.mitigatingAction(XMLNAME = "mitigatingAction", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of Spain.FHIR.DTL.vR5.Model.Element.AdverseEvent.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdverseEvent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdverseEvent";

}
