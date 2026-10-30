Class Spain.FHIR.DTL.vR5.Model.Element.VerificationResult.primarySource Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property who As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property communicationMethod As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "communicationMethod", XMLPROJECTION = "ELEMENT");
Property validationStatus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "validationStatus", XMLPROJECTION = "ELEMENT");
Property validationDate As %String(MAXLEN = 1000000, XMLNAME = "validationDate", XMLPROJECTION = "ATTRIBUTE");
Property canPushUpdates As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "canPushUpdates", XMLPROJECTION = "ELEMENT");
Property pushTypeAvailable As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "pushTypeAvailable", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.primarySource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.primarySource";

}
