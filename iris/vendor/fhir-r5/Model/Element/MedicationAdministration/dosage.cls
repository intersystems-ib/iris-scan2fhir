Class Spain.FHIR.DTL.vR5.Model.Element.MedicationAdministration.dosage Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property site As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");
Property route As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property dose As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "dose", XMLPROJECTION = "ELEMENT");
Property rateRatio As Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "rateRatio", XMLPROJECTION = "ELEMENT");
Property rateQuantity As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "rateQuantity", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationAdministration.dosage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationAdministration.dosage";

}
