Class Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.manifest.resource Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property reference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];
Property isExample As %Boolean(XMLNAME = "isExample", XMLPROJECTION = "ATTRIBUTE");
Property profile As list Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");
Property relativePath As %String(MAXLEN = 1000000, XMLNAME = "relativePath", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest.resource";

}

