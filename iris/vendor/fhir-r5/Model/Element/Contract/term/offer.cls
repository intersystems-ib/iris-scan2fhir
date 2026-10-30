Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term.offer Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property party As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.offer.party(XMLNAME = "party", XMLPROJECTION = "ELEMENT");
Property topic As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property decision As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");
Property decisionMode As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "decisionMode", XMLPROJECTION = "ELEMENT");
Property answer As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.offer.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property linkId As list Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");
Property securityLabelNumber As list Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.offer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.offer";

}

