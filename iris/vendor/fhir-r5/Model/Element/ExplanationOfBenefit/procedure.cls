Class Spain.FHIR.DTL.vR5.Model.Element.ExplanationOfBenefit.procedure Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property type As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property procedureCodeableConcept As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "procedureCodeableConcept", XMLPROJECTION = "ELEMENT");
Property procedureReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "procedureReference", XMLPROJECTION = "ELEMENT");
Property udi As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "udi", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.procedure";

}
