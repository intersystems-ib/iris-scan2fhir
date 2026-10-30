Class Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.definition.page Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sourceUrl As %String(MAXLEN = 1000000, XMLNAME = "sourceUrl", XMLPROJECTION = "ATTRIBUTE");
Property sourceString As %String(MAXLEN = 1000000, XMLNAME = "sourceString", XMLPROJECTION = "ATTRIBUTE");
Property sourceMarkdown As %String(MAXLEN = 1000000, XMLNAME = "sourceMarkdown", XMLPROJECTION = "ATTRIBUTE");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property generation As %String(MAXLEN = 1000000, XMLNAME = "generation", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.page";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.page";

}
