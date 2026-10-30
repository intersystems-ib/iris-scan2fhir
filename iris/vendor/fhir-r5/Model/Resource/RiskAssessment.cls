Class Spain.FHIR.DTL.vR5.Model.Resource.RiskAssessment Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property basedOn As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property parent As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");
Property occurrencePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");
Property condition As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");
Property performer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property basis As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basis", XMLPROJECTION = "ELEMENT");
Property prediction As list Of Spain.FHIR.DTL.vR5.Model.Element.RiskAssessment.prediction(XMLNAME = "prediction", XMLPROJECTION = "ELEMENT");
Property mitigation As %String(MAXLEN = 1000000, XMLNAME = "mitigation", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskAssessment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskAssessment";

}
