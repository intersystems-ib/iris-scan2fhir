Class Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");
Property target As %String(MAXLEN = 1000000, XMLNAME = "target", XMLPROJECTION = "ATTRIBUTE");
Property element As list Of Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group.element(XMLNAME = "element", XMLPROJECTION = "ELEMENT") [ Required ];
Property unmapped As Spain.FHIR.DTL.vR5.Model.Element.ConceptMap.group.unmapped(XMLNAME = "unmapped", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group";

}
