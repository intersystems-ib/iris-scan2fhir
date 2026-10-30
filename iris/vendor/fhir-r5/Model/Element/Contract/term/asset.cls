Class Spain.FHIR.DTL.vR5.Model.Element.Contract.term.asset Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property scope As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property typeReference As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "typeReference", XMLPROJECTION = "ELEMENT");
Property subtype As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");
Property relationship As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");
Property context As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.asset.context(XMLNAME = "context", XMLPROJECTION = "ELEMENT");
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");
Property periodType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "periodType", XMLPROJECTION = "ELEMENT");
Property period As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property usePeriod As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "usePeriod", XMLPROJECTION = "ELEMENT");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property linkId As list Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");
Property securityLabelNumber As list Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");
Property valuedItem As list Of Spain.FHIR.DTL.vR5.Model.Element.Contract.term.asset.valuedItem(XMLNAME = "valuedItem", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset";

}

