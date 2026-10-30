Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");
Property applies As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "applies", XMLPROJECTION = "ELEMENT");
Property topicCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "topicCodeableConcept", XMLPROJECTION = "ELEMENT");
Property topicReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "topicReference", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property subType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property securityLabel As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.securityLabel(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");
Property offer As Spain.FHIR.DTL.vR5.Model.Element.Contract.term.offer(XMLNAME = "offer", XMLPROJECTION = "ELEMENT") [ Required ];
Property asset As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.asset(XMLNAME = "asset", XMLPROJECTION = "ELEMENT");
Property action As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term";

}
