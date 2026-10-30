Class Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat.repeatUnit Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property unit As %String(MAXLEN = 1000000, XMLNAME = "unit", XMLPROJECTION = "ATTRIBUTE");
Property orientation As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "orientation", XMLPROJECTION = "ELEMENT");
Property amount As %Integer(XMLNAME = "amount", XMLPROJECTION = "ATTRIBUTE");
Property degreeOfPolymerisation As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation(XMLNAME = "degreeOfPolymerisation", XMLPROJECTION = "ELEMENT");
Property structuralRepresentation As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat.repeatUnit.structuralRepresentation(XMLNAME = "structuralRepresentation", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat.repeatUnit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat.repeatUnit";

}
