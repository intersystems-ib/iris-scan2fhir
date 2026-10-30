Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceDefinition.moiety Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property stereochemistry As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "stereochemistry", XMLPROJECTION = "ELEMENT");
Property opticalActivity As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "opticalActivity", XMLPROJECTION = "ELEMENT");
Property molecularFormula As %String(MAXLEN = 1000000, XMLNAME = "molecularFormula", XMLPROJECTION = "ATTRIBUTE");
Property amountQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");
Property measurementType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "measurementType", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceDefinition.moiety";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceDefinition.moiety";

}
