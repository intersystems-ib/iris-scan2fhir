Class Spain.FHIR.DTL.vR5.Model.Datatype.Dosage Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property modifierExtension As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property additionalInstruction As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "additionalInstruction", XMLPROJECTION = "ELEMENT");
Property patientInstruction As %String(MAXLEN = 1000000, XMLNAME = "patientInstruction", XMLPROJECTION = "ATTRIBUTE");
Property timing As Spain.FHIR.DTL.vR5.Model.Datatype.Timing(XMLNAME = "timing", XMLPROJECTION = "ELEMENT");
Property asNeeded As %Boolean(XMLNAME = "asNeeded", XMLPROJECTION = "ATTRIBUTE");
Property asNeededFor As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "asNeededFor", XMLPROJECTION = "ELEMENT");
Property site As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");
Property route As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");
Property method As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");
Property doseAndRate As list Of HS.FHIR.DTL.vR4.Model.Base.Element(XMLNAME = "doseAndRate", XMLPROJECTION = "ELEMENT");
Property maxDosePerPeriod As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Ratio(XMLNAME = "maxDosePerPeriod", XMLPROJECTION = "ELEMENT");
Property maxDosePerAdministration As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "maxDosePerAdministration", XMLPROJECTION = "ELEMENT");
Property maxDosePerLifetime As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "maxDosePerLifetime", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Dosage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Dosage";

}
