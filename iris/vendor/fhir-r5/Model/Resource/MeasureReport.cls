Class Spain.FHIR.DTL.vR5.Model.Resource.MeasureReport Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property dataUpdateType As %String(MAXLEN = 1000000, XMLNAME = "dataUpdateType", XMLPROJECTION = "ATTRIBUTE");
Property measure As %String(MAXLEN = 1000000, XMLNAME = "measure", XMLPROJECTION = "ATTRIBUTE");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property reporter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reporter", XMLPROJECTION = "ELEMENT");
Property reportingVendor As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reportingVendor", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT") [ Required ];
Property inputParameters As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "inputParameters", XMLPROJECTION = "ELEMENT");
Property scoring As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "scoring", XMLPROJECTION = "ELEMENT");
Property improvementNotation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "improvementNotation", XMLPROJECTION = "ELEMENT");
Property group As list Of Spain.FHIR.DTL.vR5.Model.Element.MeasureReport.group(XMLNAME = "group", XMLPROJECTION = "ELEMENT");
Property supplementalData As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supplementalData", XMLPROJECTION = "ELEMENT");
Property evaluatedResource As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "evaluatedResource", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport";

}
