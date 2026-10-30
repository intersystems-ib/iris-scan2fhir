Class Spain.FHIR.DTL.vR5.Model.Element.CarePlan.activity Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property performedActivity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "performedActivity", XMLPROJECTION = "ELEMENT");
Property progress As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "progress", XMLPROJECTION = "ELEMENT");
Property plannedActivityReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "plannedActivityReference", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CarePlan.activity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CarePlan.activity";

}
