Class Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.name Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property part As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.name.part(XMLNAME = "part", XMLPROJECTION = "ELEMENT");
Property usage As list Of Spain.FHIR.DTL.vR5.Model.Element.MedicinalProductDefinition.name.usage(XMLNAME = "usage", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductDefinition.name";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductDefinition.name";

}
