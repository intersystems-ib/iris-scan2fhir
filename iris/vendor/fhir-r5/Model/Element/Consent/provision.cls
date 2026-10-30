Class Spain.FHIR.DTL.vR5.Model.Element.Consent.provision Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property actor As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.provision.actor(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");
Property action As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "action", XMLPROJECTION = "ELEMENT");
Property securityLabel As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");
Property purpose As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");
Property documentType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "documentType", XMLPROJECTION = "ELEMENT");
Property resourceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "resourceType", XMLPROJECTION = "ELEMENT");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property dataPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "dataPeriod", XMLPROJECTION = "ELEMENT");
Property data As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.provision.data(XMLNAME = "data", XMLPROJECTION = "ELEMENT");
Property expression As Spain.FHIR.DTL.vR5.Model.Datatype.Expression(XMLNAME = "expression", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.provision";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.provision";

}
