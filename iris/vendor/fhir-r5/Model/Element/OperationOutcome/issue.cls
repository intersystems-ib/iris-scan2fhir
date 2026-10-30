Class Spain.FHIR.DTL.vR5.Model.Element.OperationOutcome.issue Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property details As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "details", XMLPROJECTION = "ELEMENT");
Property diagnostics As %String(MAXLEN = 1000000, XMLNAME = "diagnostics", XMLPROJECTION = "ATTRIBUTE");
Property location As list Of %String(MAXLEN = 1000000, XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property expression As list Of %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationOutcome.issue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationOutcome.issue";

}

