Class Spain.FHIR.DTL.vR5.Model.Resource.Contract Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property legalState As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "legalState", XMLPROJECTION = "ELEMENT");
Property instantiatesCanonical As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");
Property instantiatesUri As %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");
Property contentDerivative As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "contentDerivative", XMLPROJECTION = "ELEMENT");
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");
Property applies As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "applies", XMLPROJECTION = "ELEMENT");
Property expirationType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "expirationType", XMLPROJECTION = "ELEMENT");
Property subject As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property authority As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");
Property domain As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");
Property site As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "site", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");
Property alias As list Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");
Property author As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property scope As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");
Property topicCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "topicCodeableConcept", XMLPROJECTION = "ELEMENT");
Property topicReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "topicReference", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property subType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");
Property contentDefinition As Spain.FHIR.DTL.vR5.Model.Element.Contract.contentDefinition(XMLNAME = "contentDefinition", XMLPROJECTION = "ELEMENT");
Property term As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term(XMLNAME = "term", XMLPROJECTION = "ELEMENT");
Property supportingInfo As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");
Property relevantHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");
Property signer As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.signer(XMLNAME = "signer", XMLPROJECTION = "ELEMENT");
Property friendly As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.friendly(XMLNAME = "friendly", XMLPROJECTION = "ELEMENT");
Property legal As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.legal(XMLNAME = "legal", XMLPROJECTION = "ELEMENT");
Property rule As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");
Property legallyBindingAttachment As Spain.FHIR.DTL.vR5.Model.Datatype.Attachment(XMLNAME = "legallyBindingAttachment", XMLPROJECTION = "ELEMENT");
Property legallyBindingReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "legallyBindingReference", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract";

}

