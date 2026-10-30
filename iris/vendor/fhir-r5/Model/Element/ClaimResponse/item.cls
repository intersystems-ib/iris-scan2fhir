Class Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.item Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property itemSequence As %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property traceNumber As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "traceNumber", XMLPROJECTION = "ELEMENT");
Property noteNumber As list Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");
Property reviewOutcome As Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.item.reviewOutcome(XMLNAME = "reviewOutcome", XMLPROJECTION = "ELEMENT");
Property adjudication As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");
Property detail As list Of Spain.FHIR.DTL.vR5.Model.Element.ClaimResponse.item.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item";

}

