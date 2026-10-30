Class Spain.FHIR.DTL.vR5.Model.Resource.Schedule Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property serviceCategory As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "serviceCategory", XMLPROJECTION = "ELEMENT");
Property serviceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");
Property specialty As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property actor As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];
Property planningHorizon As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "planningHorizon", XMLPROJECTION = "ELEMENT");
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Schedule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Schedule";

}
