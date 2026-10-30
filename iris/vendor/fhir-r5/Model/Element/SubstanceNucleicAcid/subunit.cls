Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceNucleicAcid.subunit Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property subunit As %Integer(XMLNAME = "subunit", XMLPROJECTION = "ATTRIBUTE");
Property sequence As %String(MAXLEN = 1000000, XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");
Property length As %Integer(XMLNAME = "length", XMLPROJECTION = "ATTRIBUTE");
Property sequenceAttachment As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "sequenceAttachment", XMLPROJECTION = "ELEMENT");
Property fivePrime As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "fivePrime", XMLPROJECTION = "ELEMENT");
Property threePrime As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "threePrime", XMLPROJECTION = "ELEMENT");
Property linkage As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceNucleicAcid.subunit.linkage(XMLNAME = "linkage", XMLPROJECTION = "ELEMENT");
Property sugar As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceNucleicAcid.subunit.sugar(XMLNAME = "sugar", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid.subunit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid.subunit";

}
