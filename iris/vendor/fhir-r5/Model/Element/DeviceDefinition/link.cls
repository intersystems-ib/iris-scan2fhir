Class Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.link Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property relation As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "relation", XMLPROJECTION = "ELEMENT") [ Required ];
Property relatedDevice As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "relatedDevice", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.link";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.link";

}
