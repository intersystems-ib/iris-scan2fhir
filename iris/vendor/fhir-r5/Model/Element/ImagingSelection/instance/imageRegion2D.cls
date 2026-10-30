Class Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.instance.imageRegion2D Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property regionType As %String(MAXLEN = 1000000, XMLNAME = "regionType", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property coordinate As list Of %Numeric(XMLNAME = "coordinate", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingSelection.instance.imageRegion2D";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingSelection.instance.imageRegion2D";

}

