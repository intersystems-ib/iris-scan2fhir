Class Spain.FHIR.DTL.vR5.Model.Resource.DiagnosticReport Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");
Property effectivePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");
Property performer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property resultsInterpreter As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "resultsInterpreter", XMLPROJECTION = "ELEMENT");
Property specimen As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");
Property result As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property study As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "study", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of Spain.FHIR.DTL.vR5.Model.Element.DiagnosticReport.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property media As list Of Spain.FHIR.DTL.vR5.Model.Element.DiagnosticReport.media(XMLNAME = "media", XMLPROJECTION = "ELEMENT");
Property composition As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "composition", XMLPROJECTION = "ELEMENT");
Property conclusion As %String(MAXLEN = 1000000, XMLNAME = "conclusion", XMLPROJECTION = "ATTRIBUTE");
Property conclusionCode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "conclusionCode", XMLPROJECTION = "ELEMENT");
Property presentedForm As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "presentedForm", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DiagnosticReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DiagnosticReport";

}
