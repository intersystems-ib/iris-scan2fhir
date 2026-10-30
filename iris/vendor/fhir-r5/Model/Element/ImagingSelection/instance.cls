Class Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.instance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property uid As %String(MAXLEN = 1000000, XMLNAME = "uid", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");
Property sopClass As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "sopClass", XMLPROJECTION = "ELEMENT");
Property subset As list Of %String(MAXLEN = 1000000, XMLNAME = "subset", XMLPROJECTION = "ELEMENT");
Property imageRegion2D As list Of Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.instance.imageRegion2D(XMLNAME = "imageRegion2D", XMLPROJECTION = "ELEMENT");
Property imageRegion3D As list Of Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.instance.imageRegion3D(XMLNAME = "imageRegion3D", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingSelection.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingSelection.instance";

}

