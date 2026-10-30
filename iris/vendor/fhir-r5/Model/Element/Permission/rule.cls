Class Spain.FHIR.DTL.vR5.Model.Element.Permission.rule Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");
Property data As list Of Spain.FHIR.DTL.vR5.Model.Element.Permission.rule.data(XMLNAME = "data", XMLPROJECTION = "ELEMENT");
Property activity As list Of Spain.FHIR.DTL.vR5.Model.Element.Permission.rule.activity(XMLNAME = "activity", XMLPROJECTION = "ELEMENT");
Property limit As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "limit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Permission.rule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Permission.rule";

}
