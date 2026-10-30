Class Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group.element.target Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE");
Property relationship As %String(MAXLEN = 1000000, XMLNAME = "relationship", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group.element.target.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
Property dependsOn As list Of Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group.element.target.dependsOn(XMLNAME = "dependsOn", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group.element.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group.element.target";

}
