Class Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.resource Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE");
Property supportedProfile As list Of %String(MAXLEN = 1000000, XMLNAME = "supportedProfile", XMLPROJECTION = "ELEMENT");
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property interaction As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.resource.interaction(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");
Property versioning As %String(MAXLEN = 1000000, XMLNAME = "versioning", XMLPROJECTION = "ATTRIBUTE");
Property readHistory As %Boolean(XMLNAME = "readHistory", XMLPROJECTION = "ATTRIBUTE");
Property updateCreate As %Boolean(XMLNAME = "updateCreate", XMLPROJECTION = "ATTRIBUTE");
Property conditionalCreate As %Boolean(XMLNAME = "conditionalCreate", XMLPROJECTION = "ATTRIBUTE");
Property conditionalRead As %String(MAXLEN = 1000000, XMLNAME = "conditionalRead", XMLPROJECTION = "ATTRIBUTE");
Property conditionalUpdate As %Boolean(XMLNAME = "conditionalUpdate", XMLPROJECTION = "ATTRIBUTE");
Property conditionalPatch As %Boolean(XMLNAME = "conditionalPatch", XMLPROJECTION = "ATTRIBUTE");
Property conditionalDelete As %String(MAXLEN = 1000000, XMLNAME = "conditionalDelete", XMLPROJECTION = "ATTRIBUTE");
Property referencePolicy As list Of %String(MAXLEN = 1000000, XMLNAME = "referencePolicy", XMLPROJECTION = "ELEMENT");
Property searchInclude As list Of %String(MAXLEN = 1000000, XMLNAME = "searchInclude", XMLPROJECTION = "ELEMENT");
Property searchRevInclude As list Of %String(MAXLEN = 1000000, XMLNAME = "searchRevInclude", XMLPROJECTION = "ELEMENT");
Property searchParam As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.resource.searchParam(XMLNAME = "searchParam", XMLPROJECTION = "ELEMENT");
Property operation As list Of Spain.FHIR.DTL.vR5.Model.Element.CapabilityStatement.rest.resource.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest.resource";

}

