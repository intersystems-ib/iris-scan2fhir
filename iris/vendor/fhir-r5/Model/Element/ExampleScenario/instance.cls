Class Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.instance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property key As %String(MAXLEN = 1000000, XMLNAME = "key", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property structureType As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "structureType", XMLPROJECTION = "ELEMENT") [ Required ];
Property structureVersion As %String(MAXLEN = 1000000, XMLNAME = "structureVersion", XMLPROJECTION = "ATTRIBUTE");
Property structureProfileCanonical As %String(MAXLEN = 1000000, XMLNAME = "structureProfileCanonical", XMLPROJECTION = "ATTRIBUTE");
Property structureProfileUri As %String(MAXLEN = 1000000, XMLNAME = "structureProfileUri", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property content As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "content", XMLPROJECTION = "ELEMENT");
Property version As list Of Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.instance.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");
Property containedInstance As list Of Spain.FHIR.DTL.vR5.Model.Element.ExampleScenario.instance.containedInstance(XMLNAME = "containedInstance", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.instance";

}
