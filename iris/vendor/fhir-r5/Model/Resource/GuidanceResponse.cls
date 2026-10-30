Class Spain.FHIR.DTL.vR5.Model.Resource.GuidanceResponse Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property requestIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "requestIdentifier", XMLPROJECTION = "ELEMENT");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property moduleUri As %String(MAXLEN = 1000000, XMLNAME = "moduleUri", XMLPROJECTION = "ATTRIBUTE");
Property moduleCanonical As %String(MAXLEN = 1000000, XMLNAME = "moduleCanonical", XMLPROJECTION = "ATTRIBUTE");
Property moduleCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "moduleCodeableConcept", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");
Property performer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property evaluationMessage As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "evaluationMessage", XMLPROJECTION = "ELEMENT");
Property outputParameters As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "outputParameters", XMLPROJECTION = "ELEMENT");
Property result As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");
Property dataRequirement As list Of Spain.FHIR.DTL.vR5.Model.Datatype.DataRequirement(XMLNAME = "dataRequirement", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GuidanceResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GuidanceResponse";

}
