Class Spain.FHIR.DTL.vR5.Model.Element.ValueSet.expansion Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As %String(MAXLEN = 1000000, XMLNAME = "identifier", XMLPROJECTION = "ATTRIBUTE");
Property next As %String(MAXLEN = 1000000, XMLNAME = "next", XMLPROJECTION = "ATTRIBUTE");
Property timestamp As %String(MAXLEN = 1000000, XMLNAME = "timestamp", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property total As %Integer(XMLNAME = "total", XMLPROJECTION = "ATTRIBUTE");
Property offset As %Integer(XMLNAME = "offset", XMLPROJECTION = "ATTRIBUTE");
Property parameter As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.expansion.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.expansion.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property contains As list Of Spain.FHIR.DTL.vR5.Model.Element.ValueSet.expansion.contains(XMLNAME = "contains", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.expansion";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.expansion";

}
