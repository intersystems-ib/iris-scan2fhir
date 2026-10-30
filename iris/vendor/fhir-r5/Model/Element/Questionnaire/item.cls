Class Spain.FHIR.DTL.vR5.Model.Element.Questionnaire.item Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");
Property code As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property prefix As %String(MAXLEN = 1000000, XMLNAME = "prefix", XMLPROJECTION = "ATTRIBUTE");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property enableWhen As list Of Spain.FHIR.DTL.vR5.Model.Element.Questionnaire.item.enableWhen(XMLNAME = "enableWhen", XMLPROJECTION = "ELEMENT");
Property enableBehavior As %String(MAXLEN = 1000000, XMLNAME = "enableBehavior", XMLPROJECTION = "ATTRIBUTE");
Property disabledDisplay As %String(MAXLEN = 1000000, XMLNAME = "disabledDisplay", XMLPROJECTION = "ATTRIBUTE");
Property required As %Boolean(XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE");
Property repeats As %Boolean(XMLNAME = "repeats", XMLPROJECTION = "ATTRIBUTE");
Property readOnly As %Boolean(XMLNAME = "readOnly", XMLPROJECTION = "ATTRIBUTE");
Property maxLength As %Integer(XMLNAME = "maxLength", XMLPROJECTION = "ATTRIBUTE");
Property answerConstraint As %String(MAXLEN = 1000000, XMLNAME = "answerConstraint", XMLPROJECTION = "ATTRIBUTE");
Property answerValueSet As %String(MAXLEN = 1000000, XMLNAME = "answerValueSet", XMLPROJECTION = "ATTRIBUTE");
Property answerOption As list Of Spain.FHIR.DTL.vR5.Model.Element.Questionnaire.item.answerOption(XMLNAME = "answerOption", XMLPROJECTION = "ELEMENT");
Property initial As list Of Spain.FHIR.DTL.vR5.Model.Element.Questionnaire.item.initial(XMLNAME = "initial", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item";

}
