Class Spain.FHIR.DTL.vR5.Model.Resource.ImmunizationEvaluation Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property authority As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");
Property targetDisease As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT") [ Required ];
Property immunizationEvent As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "immunizationEvent", XMLPROJECTION = "ELEMENT") [ Required ];
Property doseStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "doseStatus", XMLPROJECTION = "ELEMENT") [ Required ];
Property doseStatusReason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "doseStatusReason", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");
Property doseNumber As %String(MAXLEN = 1000000, XMLNAME = "doseNumber", XMLPROJECTION = "ATTRIBUTE");
Property seriesDoses As %String(MAXLEN = 1000000, XMLNAME = "seriesDoses", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationEvaluation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationEvaluation";

}
