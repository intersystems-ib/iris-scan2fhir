Class Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.error Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property itemSequence As %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ATTRIBUTE");
Property detailSequence As %Integer(XMLNAME = "detailSequence", XMLPROJECTION = "ATTRIBUTE");
Property subDetailSequence As %Integer(XMLNAME = "subDetailSequence", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property expression As list Of %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.error";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.error";

}

