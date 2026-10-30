Class Spain.FHIR.DTL.vR5.Model.Element.Requirements.statement Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property key As %String(MAXLEN = 1000000, XMLNAME = "key", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");
Property conformance As list Of %String(MAXLEN = 1000000, XMLNAME = "conformance", XMLPROJECTION = "ELEMENT");
Property conditionality As %Boolean(XMLNAME = "conditionality", XMLPROJECTION = "ATTRIBUTE");
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property derivedFrom As %String(MAXLEN = 1000000, XMLNAME = "derivedFrom", XMLPROJECTION = "ATTRIBUTE");
Property parent As %String(MAXLEN = 1000000, XMLNAME = "parent", XMLPROJECTION = "ATTRIBUTE");
Property satisfiedBy As list Of %String(MAXLEN = 1000000, XMLNAME = "satisfiedBy", XMLPROJECTION = "ELEMENT");
Property reference As list Of %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ELEMENT");
Property source As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Requirements.statement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Requirements.statement";

}

