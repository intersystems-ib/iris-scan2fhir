Class Spain.FHIR.DTL.vR5.Model.Element.MedicationKnowledge.cost Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property effectiveDate As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectiveDate", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");
Property costMoney As Spain.FHIR.DTL.vR5.Model.Datatype.Money(XMLNAME = "costMoney", XMLPROJECTION = "ELEMENT");
Property costCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "costCodeableConcept", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.cost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.cost";

}
