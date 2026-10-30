Class Spain.FHIR.DTL.vR5.Model.Element.PaymentReconciliation.allocation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property predecessor As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "predecessor", XMLPROJECTION = "ELEMENT");
Property target As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT");
Property targetItemString As %String(MAXLEN = 1000000, XMLNAME = "targetItemString", XMLPROJECTION = "ATTRIBUTE");
Property targetItemIdentifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "targetItemIdentifier", XMLPROJECTION = "ELEMENT");
Property targetItemPositiveInt As %Integer(XMLNAME = "targetItemPositiveInt", XMLPROJECTION = "ATTRIBUTE");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property account As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property submitter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "submitter", XMLPROJECTION = "ELEMENT");
Property response As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "response", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property responsible As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "responsible", XMLPROJECTION = "ELEMENT");
Property payee As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentReconciliation.allocation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentReconciliation.allocation";

}
