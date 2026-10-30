Class Spain.FHIR.DTL.vR5.Model.Element.MolecularSequence.relative.startingSequence Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property genomeAssembly As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "genomeAssembly", XMLPROJECTION = "ELEMENT");
Property chromosome As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "chromosome", XMLPROJECTION = "ELEMENT");
Property sequenceCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "sequenceCodeableConcept", XMLPROJECTION = "ELEMENT");
Property sequenceString As %String(MAXLEN = 1000000, XMLNAME = "sequenceString", XMLPROJECTION = "ATTRIBUTE");
Property sequenceReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "sequenceReference", XMLPROJECTION = "ELEMENT");
Property windowStart As %Integer(XMLNAME = "windowStart", XMLPROJECTION = "ATTRIBUTE");
Property windowEnd As %Integer(XMLNAME = "windowEnd", XMLPROJECTION = "ATTRIBUTE");
Property orientation As %String(MAXLEN = 1000000, XMLNAME = "orientation", XMLPROJECTION = "ATTRIBUTE");
Property strand As %String(MAXLEN = 1000000, XMLNAME = "strand", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.relative.startingSequence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.relative.startingSequence";

}
