Class Spain.FHIR.DTL.vR5.Model.Resource.Transport Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property instantiatesCanonical As %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ATTRIBUTE");
Property instantiatesUri As %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property groupIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property statusReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property focus As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property for As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "for", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property completionTime As %String(MAXLEN = 1000000, XMLNAME = "completionTime", XMLPROJECTION = "ATTRIBUTE");
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");
Property lastModified As %String(MAXLEN = 1000000, XMLNAME = "lastModified", XMLPROJECTION = "ATTRIBUTE");
Property requester As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");
Property performerType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");
Property owner As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property insurance As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property relevantHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");
Property restriction As Spain.FHIR.DTL.vR5.Model.Element.Transport.restriction(XMLNAME = "restriction", XMLPROJECTION = "ELEMENT");
Property input As list Of Spain.FHIR.DTL.vR5.Model.Element.Transport.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT");
Property output As list Of Spain.FHIR.DTL.vR5.Model.Element.Transport.output(XMLNAME = "output", XMLPROJECTION = "ELEMENT");
Property requestedLocation As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requestedLocation", XMLPROJECTION = "ELEMENT") [ Required ];
Property currentLocation As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "currentLocation", XMLPROJECTION = "ELEMENT") [ Required ];
Property reason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property history As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "history", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Transport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Transport";

}
