Class Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.manifest Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property rendering As %String(MAXLEN = 1000000, XMLNAME = "rendering", XMLPROJECTION = "ATTRIBUTE");
Property resource As list Of Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.manifest.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT") [ Required ];
Property page As list Of Spain.FHIR.DTL.vR5.Model.Element.ImplementationGuide.manifest.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");
Property image As list Of %String(MAXLEN = 1000000, XMLNAME = "image", XMLPROJECTION = "ELEMENT");
Property other As list Of %String(MAXLEN = 1000000, XMLNAME = "other", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest";

}

