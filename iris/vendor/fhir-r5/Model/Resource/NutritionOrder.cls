Class Spain.FHIR.DTL.vR5.Model.Resource.NutritionOrder Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property instantiatesCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");
Property instantiatesUri As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");
Property instantiates As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property groupIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property supportingInformation As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");
Property dateTime As %String(MAXLEN = 1000000, XMLNAME = "dateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property orderer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "orderer", XMLPROJECTION = "ELEMENT");
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property allergyIntolerance As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "allergyIntolerance", XMLPROJECTION = "ELEMENT");
Property foodPreferenceModifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "foodPreferenceModifier", XMLPROJECTION = "ELEMENT");
Property excludeFoodModifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "excludeFoodModifier", XMLPROJECTION = "ELEMENT");
Property outsideFoodAllowed As %Boolean(XMLNAME = "outsideFoodAllowed", XMLPROJECTION = "ATTRIBUTE");
Property oralDiet As Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet(XMLNAME = "oralDiet", XMLPROJECTION = "ELEMENT");
Property supplement As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.supplement(XMLNAME = "supplement", XMLPROJECTION = "ELEMENT");
Property enteralFormula As Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.enteralFormula(XMLNAME = "enteralFormula", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder";

}

