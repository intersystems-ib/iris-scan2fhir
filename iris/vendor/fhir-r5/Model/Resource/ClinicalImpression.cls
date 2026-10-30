Class Spain.FHIR.DTL.vR5.Model.Resource.ClinicalImpression Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property statusReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");
Property effectivePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property performer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property previous As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "previous", XMLPROJECTION = "ELEMENT");
Property problem As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "problem", XMLPROJECTION = "ELEMENT");
Property changePattern As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "changePattern", XMLPROJECTION = "ELEMENT");
Property protocol As list Of %String(MAXLEN = 1000000, XMLNAME = "protocol", XMLPROJECTION = "ELEMENT");
Property summary As %String(MAXLEN = 1000000, XMLNAME = "summary", XMLPROJECTION = "ATTRIBUTE");
Property finding As list Of Spain.FHIR.DTL.vR5.Model.Element.ClinicalImpression.finding(XMLNAME = "finding", XMLPROJECTION = "ELEMENT");
Property prognosisCodeableConcept As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "prognosisCodeableConcept", XMLPROJECTION = "ELEMENT");
Property prognosisReference As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "prognosisReference", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalImpression";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalImpression";

}

