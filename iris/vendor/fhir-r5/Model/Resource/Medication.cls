Class Spain.FHIR.DTL.vR5.Model.Resource.Medication Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");
Property marketingAuthorizationHolder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "marketingAuthorizationHolder", XMLPROJECTION = "ELEMENT");
Property doseForm As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "doseForm", XMLPROJECTION = "ELEMENT");
Property totalVolume As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "totalVolume", XMLPROJECTION = "ELEMENT");
Property ingredient As list Of Spain.FHIR.DTL.vR5.Model.Element.Medication.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");
Property batch As Spain.FHIR.DTL.vR5.Model.Element.Medication.batch(XMLNAME = "batch", XMLPROJECTION = "ELEMENT");
Property definition As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Medication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Medication";

}
