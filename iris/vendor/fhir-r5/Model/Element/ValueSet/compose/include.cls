Class Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose.include Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property concept As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose.include.concept(XMLNAME = "concept", XMLPROJECTION = "ELEMENT");
Property filter As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose.include.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");
Property valueSet As list Of %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ELEMENT");
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose.include";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose.include";

}

