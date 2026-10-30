Class Spain.FHIR.DTL.vR5.Model.Element.Permission.rule.data Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property resource As list Of Spain.FHIR.DTL.vR5.Model.Element.Permission.rule.data.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");
Property security As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "security", XMLPROJECTION = "ELEMENT");
Property period As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property expression As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "expression", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Permission.rule.data";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Permission.rule.data";

}
