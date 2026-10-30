Class Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property extends As %String(MAXLEN = 1000000, XMLNAME = "extends", XMLPROJECTION = "ATTRIBUTE");
Property typeMode As %String(MAXLEN = 1000000, XMLNAME = "typeMode", XMLPROJECTION = "ATTRIBUTE");
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");
Property input As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT") [ Required ];
Property rule As list Of Spain.FHIR.DTL.vR5.Model.Element.StructureMap.group.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group";

}
