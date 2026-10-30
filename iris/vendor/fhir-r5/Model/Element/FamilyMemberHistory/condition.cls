Class Spain.FHIR.DTL.vR5.Model.Element.FamilyMemberHistory.condition Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property outcome As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");
Property contributedToDeath As %Boolean(XMLNAME = "contributedToDeath", XMLPROJECTION = "ATTRIBUTE");
Property onsetAge As Spain.FHIR.DTL.vR5.Model.Datatype.Age(XMLNAME = "onsetAge", XMLPROJECTION = "ELEMENT");
Property onsetRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "onsetRange", XMLPROJECTION = "ELEMENT");
Property onsetPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "onsetPeriod", XMLPROJECTION = "ELEMENT");
Property onsetString As %String(MAXLEN = 1000000, XMLNAME = "onsetString", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "FamilyMemberHistory.condition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "FamilyMemberHistory.condition";

}
