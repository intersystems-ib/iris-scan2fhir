Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term.securityLabel Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property number As list Of %Integer(XMLNAME = "number", XMLPROJECTION = "ELEMENT");
Property classification As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "classification", XMLPROJECTION = "ELEMENT") [ Required ];
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property control As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "control", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.securityLabel";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.securityLabel";

}

