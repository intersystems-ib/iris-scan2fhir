Class Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.codeSystem.version Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");
Property isDefault As %Boolean(XMLNAME = "isDefault", XMLPROJECTION = "ATTRIBUTE");
Property compositional As %Boolean(XMLNAME = "compositional", XMLPROJECTION = "ATTRIBUTE");
Property language As list Of %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ELEMENT");
Property filter As list Of Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.codeSystem.version.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");
Property property As list Of %String(MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem.version";

}

