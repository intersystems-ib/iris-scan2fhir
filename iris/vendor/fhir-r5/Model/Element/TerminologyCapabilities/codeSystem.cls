Class Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.codeSystem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE");
Property version As list Of Spain.FHIR.DTL.vR5.Model.Element.TerminologyCapabilities.codeSystem.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property content As %String(MAXLEN = 1000000, XMLNAME = "content", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property subsumption As %Boolean(XMLNAME = "subsumption", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem";

}
