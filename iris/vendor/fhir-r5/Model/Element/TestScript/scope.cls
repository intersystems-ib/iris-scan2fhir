Class Spain.FHIR.DTL.vR5.Model.Element.TestScript.scope Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property artifact As %String(MAXLEN = 1000000, XMLNAME = "artifact", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property conformance As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "conformance", XMLPROJECTION = "ELEMENT");
Property phase As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "phase", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.scope";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.scope";

}
