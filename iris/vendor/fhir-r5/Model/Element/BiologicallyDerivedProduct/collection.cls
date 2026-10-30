Class Spain.FHIR.DTL.vR5.Model.Element.BiologicallyDerivedProduct.collection Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property collector As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "collector", XMLPROJECTION = "ELEMENT");
Property source As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");
Property collectedDateTime As %String(MAXLEN = 1000000, XMLNAME = "collectedDateTime", XMLPROJECTION = "ATTRIBUTE");
Property collectedPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "collectedPeriod", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct.collection";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct.collection";

}
