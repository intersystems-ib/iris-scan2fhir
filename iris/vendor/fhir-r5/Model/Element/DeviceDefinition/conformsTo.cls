Class Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.conformsTo Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property category As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property specification As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specification", XMLPROJECTION = "ELEMENT") [ Required ];
Property version As list Of %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property source As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.conformsTo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.conformsTo";

}

