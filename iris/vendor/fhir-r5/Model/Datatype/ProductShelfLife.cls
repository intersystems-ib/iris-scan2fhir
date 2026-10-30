Class Spain.FHIR.DTL.vR5.Model.Datatype.ProductShelfLife Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property modifierExtension As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property periodDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "periodDuration", XMLPROJECTION = "ELEMENT");
Property periodString As %String(MAXLEN = 1000000, XMLNAME = "periodString", XMLPROJECTION = "ATTRIBUTE");
Property specialPrecautionsForStorage As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "specialPrecautionsForStorage", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ProductShelfLife";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ProductShelfLife";

}
