Class Spain.FHIR.DTL.vR5.Model.Element.Account.balance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property aggregate As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "aggregate", XMLPROJECTION = "ELEMENT");
Property term As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");
Property estimate As %Boolean(XMLNAME = "estimate", XMLPROJECTION = "ATTRIBUTE");
Property amount As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account.balance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account.balance";

}
