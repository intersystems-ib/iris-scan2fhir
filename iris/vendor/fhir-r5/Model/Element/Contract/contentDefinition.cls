Class Spain.FHIR.DTL.vR5.Model.Element.Contract.contentDefinition Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property subType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");
Property publisher As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "publisher", XMLPROJECTION = "ELEMENT");
Property publicationDate As %String(MAXLEN = 1000000, XMLNAME = "publicationDate", XMLPROJECTION = "ATTRIBUTE");
Property publicationStatus As %String(MAXLEN = 1000000, XMLNAME = "publicationStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.contentDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.contentDefinition";

}
