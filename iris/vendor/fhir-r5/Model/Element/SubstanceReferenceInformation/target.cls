Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceReferenceInformation.target Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property target As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property interaction As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");
Property organism As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "organism", XMLPROJECTION = "ELEMENT");
Property organismType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "organismType", XMLPROJECTION = "ELEMENT");
Property amountQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");
Property amountRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");
Property amountType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");
Property source As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.target";

}
