Class Spain.FHIR.DTL.vR5.Model.Datatype.DataRequirement Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property profile As list Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");
Property subjectCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");
Property subjectReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");
Property mustSupport As list Of %String(MAXLEN = 1000000, XMLNAME = "mustSupport", XMLPROJECTION = "ELEMENT");
Property codeFilter As list Of HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "codeFilter", XMLPROJECTION = "ELEMENT");
Property dateFilter As list Of HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "dateFilter", XMLPROJECTION = "ELEMENT");
Property valueFilter As list Of HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "valueFilter", XMLPROJECTION = "ELEMENT");
Property limit As %Integer(XMLNAME = "limit", XMLPROJECTION = "ATTRIBUTE");
Property sort As list Of HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "sort", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DataRequirement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DataRequirement";

}

