Class Spain.FHIR.DTL.vR5.Model.Datatype.Attachment Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");
Property data As %String(MAXLEN = 1000000, XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property size As %BigInt(XMLNAME = "size", XMLPROJECTION = "ATTRIBUTE");
Property hash As %String(MAXLEN = 1000000, XMLNAME = "hash", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property creation As %String(MAXLEN = 1000000, XMLNAME = "creation", XMLPROJECTION = "ATTRIBUTE");
Property height As %Integer(XMLNAME = "height", XMLPROJECTION = "ATTRIBUTE");
Property width As %Integer(XMLNAME = "width", XMLPROJECTION = "ATTRIBUTE");
Property frames As %Integer(XMLNAME = "frames", XMLPROJECTION = "ATTRIBUTE");
Property duration As %Numeric(XMLNAME = "duration", XMLPROJECTION = "ATTRIBUTE");
Property pages As %Integer(XMLNAME = "pages", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Attachment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Attachment";

}
