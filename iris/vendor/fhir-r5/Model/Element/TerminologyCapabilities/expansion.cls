Class Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.expansion Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property hierarchical As %Boolean(XMLNAME = "hierarchical", XMLPROJECTION = "ATTRIBUTE");
Property paging As %Boolean(XMLNAME = "paging", XMLPROJECTION = "ATTRIBUTE");
Property incomplete As %Boolean(XMLNAME = "incomplete", XMLPROJECTION = "ATTRIBUTE");
Property parameter As list Of Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.expansion.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");
Property textFilter As %String(MAXLEN = 1000000, XMLNAME = "textFilter", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.expansion";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.expansion";

}
