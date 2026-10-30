Class Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property lockedDate As %String(MAXLEN = 1000000, XMLNAME = "lockedDate", XMLPROJECTION = "ATTRIBUTE");
Property inactive As %Boolean(XMLNAME = "inactive", XMLPROJECTION = "ATTRIBUTE");
Property include As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose.include(XMLNAME = "include", XMLPROJECTION = "ELEMENT") [ Required ];
Property property As list Of %String(MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose";

}

