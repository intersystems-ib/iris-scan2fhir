Class Spain.FHIR.DTL.vR5.Model.Element.Questionnaire.item.enableWhen Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property question As %String(MAXLEN = 1000000, XMLNAME = "question", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property operator As %String(MAXLEN = 1000000, XMLNAME = "operator", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property answerBoolean As %Boolean(XMLNAME = "answerBoolean", XMLPROJECTION = "ATTRIBUTE");
Property answerDecimal As %Numeric(XMLNAME = "answerDecimal", XMLPROJECTION = "ATTRIBUTE");
Property answerInteger As %Integer(XMLNAME = "answerInteger", XMLPROJECTION = "ATTRIBUTE");
Property answerDate As %String(MAXLEN = 1000000, XMLNAME = "answerDate", XMLPROJECTION = "ATTRIBUTE");
Property answerDateTime As %String(MAXLEN = 1000000, XMLNAME = "answerDateTime", XMLPROJECTION = "ATTRIBUTE");
Property answerTime As %String(MAXLEN = 1000000, XMLNAME = "answerTime", XMLPROJECTION = "ATTRIBUTE");
Property answerString As %String(MAXLEN = 1000000, XMLNAME = "answerString", XMLPROJECTION = "ATTRIBUTE");
Property answerCoding As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "answerCoding", XMLPROJECTION = "ELEMENT");
Property answerQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "answerQuantity", XMLPROJECTION = "ELEMENT");
Property answerReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "answerReference", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item.enableWhen";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item.enableWhen";

}
