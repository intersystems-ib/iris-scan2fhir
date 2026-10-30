Class Spain.FHIR.DTL.vR5.Model.Resource.ResearchSubject Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property progress As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchSubject.progress(XMLNAME = "progress", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property study As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "study", XMLPROJECTION = "ELEMENT") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property assignedComparisonGroup As %String(MAXLEN = 1000000, XMLNAME = "assignedComparisonGroup", XMLPROJECTION = "ATTRIBUTE");
Property actualComparisonGroup As %String(MAXLEN = 1000000, XMLNAME = "actualComparisonGroup", XMLPROJECTION = "ATTRIBUTE");
Property consent As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "consent", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchSubject";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchSubject";

}
