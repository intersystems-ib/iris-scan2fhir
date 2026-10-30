Class Spain.FHIR.DTL.vR5.Model.Resource.ClinicalUseDefinition Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property subject As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property contraindication As Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.contraindication(XMLNAME = "contraindication", XMLPROJECTION = "ELEMENT");
Property indication As Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.indication(XMLNAME = "indication", XMLPROJECTION = "ELEMENT");
Property interaction As Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.interaction(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");
Property population As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "population", XMLPROJECTION = "ELEMENT");
Property library As list Of %String(MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");
Property undesirableEffect As Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.undesirableEffect(XMLNAME = "undesirableEffect", XMLPROJECTION = "ELEMENT");
Property warning As Spain.FHIR.DTL.vR5.Model.Element.ClinicalUseDefinition.warning(XMLNAME = "warning", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalUseDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalUseDefinition";

}

