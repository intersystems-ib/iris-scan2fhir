Class Spain.FHIR.DTL.vR5.Model.Resource.SubstanceNucleicAcid Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequenceType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "sequenceType", XMLPROJECTION = "ELEMENT");
Property numberOfSubunits As %Integer(XMLNAME = "numberOfSubunits", XMLPROJECTION = "ATTRIBUTE");
Property areaOfHybridisation As %String(MAXLEN = 1000000, XMLNAME = "areaOfHybridisation", XMLPROJECTION = "ATTRIBUTE");
Property oligoNucleotideType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "oligoNucleotideType", XMLPROJECTION = "ELEMENT");
Property subunit As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstanceNucleicAcid.subunit(XMLNAME = "subunit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid";

}
