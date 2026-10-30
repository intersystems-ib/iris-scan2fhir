Class Spain.FHIR.DTL.vR5.Model.Element.MolecularSequence.relative Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property coordinateSystem As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "coordinateSystem", XMLPROJECTION = "ELEMENT") [ Required ];
Property ordinalPosition As %Integer(XMLNAME = "ordinalPosition", XMLPROJECTION = "ATTRIBUTE");
Property sequenceRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "sequenceRange", XMLPROJECTION = "ELEMENT");
Property startingSequence As Spain.FHIR.DTL.vR5.Model.Element.MolecularSequence.relative.startingSequence(XMLNAME = "startingSequence", XMLPROJECTION = "ELEMENT");
Property edit As list Of Spain.FHIR.DTL.vR5.Model.Element.MolecularSequence.relative.edit(XMLNAME = "edit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.relative";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.relative";

}
