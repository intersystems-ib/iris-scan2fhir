Class Spain.FHIR.DTL.vR5.Model.Element.PlanDefinition.action.relatedAction Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property targetId As %String(MAXLEN = 1000000, XMLNAME = "targetId", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property relationship As %String(MAXLEN = 1000000, XMLNAME = "relationship", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property endRelationship As %String(MAXLEN = 1000000, XMLNAME = "endRelationship", XMLPROJECTION = "ATTRIBUTE");
Property offsetDuration As Spain.FHIR.DTL.vR5.Model.Datatype.Duration(XMLNAME = "offsetDuration", XMLPROJECTION = "ELEMENT");
Property offsetRange As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "offsetRange", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PlanDefinition.action.relatedAction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PlanDefinition.action.relatedAction";

}
