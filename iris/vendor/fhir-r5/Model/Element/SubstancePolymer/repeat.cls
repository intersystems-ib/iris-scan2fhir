Class Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property averageMolecularFormula As %String(MAXLEN = 1000000, XMLNAME = "averageMolecularFormula", XMLPROJECTION = "ATTRIBUTE");
Property repeatUnitAmountType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "repeatUnitAmountType", XMLPROJECTION = "ELEMENT");
Property repeatUnit As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat.repeatUnit(XMLNAME = "repeatUnit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat";

}
