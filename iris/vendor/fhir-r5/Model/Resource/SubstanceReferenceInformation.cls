Class Spain.FHIR.DTL.vR5.Model.Resource.SubstanceReferenceInformation Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
Property gene As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceReferenceInformation.gene(XMLNAME = "gene", XMLPROJECTION = "ELEMENT");
Property geneElement As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceReferenceInformation.geneElement(XMLNAME = "geneElement", XMLPROJECTION = "ELEMENT");
Property target As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceReferenceInformation.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation";

}
