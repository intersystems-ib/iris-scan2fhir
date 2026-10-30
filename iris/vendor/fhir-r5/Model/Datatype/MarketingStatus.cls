Class Spain.FHIR.DTL.vR5.Model.Datatype.MarketingStatus Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property modifierExtension As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");
Property country As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");
Property jurisdiction As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];
Property dateRange As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "dateRange", XMLPROJECTION = "ELEMENT");
Property restoreDate As %String(MAXLEN = 1000000, XMLNAME = "restoreDate", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MarketingStatus";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MarketingStatus";

}
