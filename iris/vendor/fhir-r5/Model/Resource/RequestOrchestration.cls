Class Spain.FHIR.DTL.vR5.Model.Resource.RequestOrchestration Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property instantiatesCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");
Property instantiatesUri As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property replaces As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");
Property groupIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property goal As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "goal", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property action As list Of Spain.FHIR.DTL.vR5.Model.Element.RequestOrchestration.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RequestOrchestration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RequestOrchestration";

}

