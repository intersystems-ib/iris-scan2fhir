Class Spain.FHIR.DTL.vR5.Model.Element.CodeSystem.concept Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");
Property designation As list Of Spain.FHIR.DTL.vR5.Model.Element.CodeSystem.concept.designation(XMLNAME = "designation", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.CodeSystem.concept.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.concept";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.concept";

}
