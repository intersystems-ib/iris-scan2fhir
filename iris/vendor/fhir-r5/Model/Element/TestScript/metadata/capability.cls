Class Spain.FHIR.DTL.vR5.Model.Element.TestScript.metadata.capability Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property required As %Boolean(XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property validated As %Boolean(XMLNAME = "validated", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property origin As list Of %Integer(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");
Property destination As %Integer(XMLNAME = "destination", XMLPROJECTION = "ATTRIBUTE");
Property link As list Of %String(MAXLEN = 1000000, XMLNAME = "link", XMLPROJECTION = "ELEMENT");
Property capabilities As %String(MAXLEN = 1000000, XMLNAME = "capabilities", XMLPROJECTION = "ATTRIBUTE") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata.capability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata.capability";

}

