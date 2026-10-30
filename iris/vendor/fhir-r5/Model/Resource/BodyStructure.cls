Class Spain.FHIR.DTL.vR5.Model.Resource.BodyStructure Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property morphology As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "morphology", XMLPROJECTION = "ELEMENT");
Property includedStructure As list Of Spain.FHIR.DTL.vR5.Model.Element.BodyStructure.includedStructure(XMLNAME = "includedStructure", XMLPROJECTION = "ELEMENT") [ Required ];
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property image As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "image", XMLPROJECTION = "ELEMENT");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BodyStructure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BodyStructure";

}
