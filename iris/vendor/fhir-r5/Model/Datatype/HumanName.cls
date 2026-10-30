Class Spain.FHIR.DTL.vR5.Model.Datatype.HumanName Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property family As %String(MAXLEN = 1000000, XMLNAME = "family", XMLPROJECTION = "ATTRIBUTE");
Property given As list Of %String(MAXLEN = 1000000, XMLNAME = "given", XMLPROJECTION = "ELEMENT");
Property prefix As list Of %String(MAXLEN = 1000000, XMLNAME = "prefix", XMLPROJECTION = "ELEMENT");
Property suffix As list Of %String(MAXLEN = 1000000, XMLNAME = "suffix", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HumanName";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HumanName";

}

