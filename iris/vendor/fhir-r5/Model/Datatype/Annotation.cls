Class Spain.FHIR.DTL.vR5.Model.Datatype.Annotation Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property authorReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authorReference", XMLPROJECTION = "ELEMENT");
Property authorString As %String(MAXLEN = 1000000, XMLNAME = "authorString", XMLPROJECTION = "ATTRIBUTE");
Property time As %String(MAXLEN = 1000000, XMLNAME = "time", XMLPROJECTION = "ATTRIBUTE");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Annotation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Annotation";

}
