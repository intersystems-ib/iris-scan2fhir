Class Spain.FHIR.DTL.vR5.Model.Resource.ImmunizationRecommendation Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property authority As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");
Property recommendation As list Of Spain.FHIR.DTL.vR5.Model.Element.ImmunizationRecommendation.recommendation(XMLNAME = "recommendation", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation";

}
