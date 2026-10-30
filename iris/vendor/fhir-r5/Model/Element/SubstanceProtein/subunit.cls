Class Spain.FHIR.DTL.vR5.Model.Element.SubstanceProtein.subunit Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property subunit As %Integer(XMLNAME = "subunit", XMLPROJECTION = "ATTRIBUTE");
Property sequence As %String(MAXLEN = 1000000, XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");
Property length As %Integer(XMLNAME = "length", XMLPROJECTION = "ATTRIBUTE");
Property sequenceAttachment As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "sequenceAttachment", XMLPROJECTION = "ELEMENT");
Property nTerminalModificationId As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "nTerminalModificationId", XMLPROJECTION = "ELEMENT");
Property nTerminalModification As %String(MAXLEN = 1000000, XMLNAME = "nTerminalModification", XMLPROJECTION = "ATTRIBUTE");
Property cTerminalModificationId As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "cTerminalModificationId", XMLPROJECTION = "ELEMENT");
Property cTerminalModification As %String(MAXLEN = 1000000, XMLNAME = "cTerminalModification", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceProtein.subunit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceProtein.subunit";

}
