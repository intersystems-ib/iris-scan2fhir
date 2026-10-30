Class Spain.FHIR.DTL.vR5.Model.Resource.Bundle Extends HS.FHIR.DTL.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property timestamp As %String(MAXLEN = 1000000, XMLNAME = "timestamp", XMLPROJECTION = "ATTRIBUTE");
Property total As %Integer(XMLNAME = "total", XMLPROJECTION = "ATTRIBUTE");
Property link As list Of Spain.FHIR.DTL.vR5.Model.Element.Bundle.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");
Property entry As list Of Spain.FHIR.DTL.vR5.Model.Element.Bundle.entry(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");
Property signature As Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "signature", XMLPROJECTION = "ELEMENT");
Property issues As HS.FHIR.DTL.vR4.Model.Base.Resource(XMLNAME = "issues", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle";

}
