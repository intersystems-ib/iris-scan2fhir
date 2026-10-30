Class Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property source As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];
Property target As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property dependent As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule.dependent(XMLNAME = "dependent", XMLPROJECTION = "ELEMENT");
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule";

}
