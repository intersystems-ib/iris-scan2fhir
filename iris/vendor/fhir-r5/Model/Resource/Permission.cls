Class Spain.FHIR.DTL.vR5.Model.Resource.Permission Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property asserter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "asserter", XMLPROJECTION = "ELEMENT");
Property date As list Of %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ELEMENT");
Property validity As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "validity", XMLPROJECTION = "ELEMENT");
Property justification As Spain.FHIR.DTL.vR5.Model.Element.Permission.justification(XMLNAME = "justification", XMLPROJECTION = "ELEMENT");
Property combining As %String(MAXLEN = 1000000, XMLNAME = "combining", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property rule As list Of Spain.FHIR.DTL.vR5.Model.Element.Permission.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Permission";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Permission";

}

