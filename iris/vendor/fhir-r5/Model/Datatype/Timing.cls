Class Spain.FHIR.DTL.vR5.Model.Datatype.Timing Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property modifierExtension As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");
Property event As list Of %String(MAXLEN = 1000000, XMLNAME = "event", XMLPROJECTION = "ELEMENT");
Property repeat As HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "repeat", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Timing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Timing";

}

