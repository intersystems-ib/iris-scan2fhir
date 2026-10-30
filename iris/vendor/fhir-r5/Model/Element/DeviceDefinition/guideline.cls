Class Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.guideline Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
Property usageInstruction As %String(MAXLEN = 1000000, XMLNAME = "usageInstruction", XMLPROJECTION = "ATTRIBUTE");
Property relatedArtifact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");
Property indication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "indication", XMLPROJECTION = "ELEMENT");
Property contraindication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "contraindication", XMLPROJECTION = "ELEMENT");
Property warning As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "warning", XMLPROJECTION = "ELEMENT");
Property intendedUse As %String(MAXLEN = 1000000, XMLNAME = "intendedUse", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.guideline";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.guideline";

}
