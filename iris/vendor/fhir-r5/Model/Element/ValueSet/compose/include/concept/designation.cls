Class Spain.FHIR.DTL.vR5.Model.Element.ValueSet.compose.include.concept.designation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");
Property use As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "use", XMLPROJECTION = "ELEMENT");
Property additionalUse As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "additionalUse", XMLPROJECTION = "ELEMENT");
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose.include.concept.designation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose.include.concept.designation";

}
