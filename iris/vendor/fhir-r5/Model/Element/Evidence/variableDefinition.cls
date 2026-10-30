Class Spain.FHIR.DTL.vR5.Model.Element.Evidence.variableDefinition Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property variableRole As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "variableRole", XMLPROJECTION = "ELEMENT") [ Required ];
Property observed As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "observed", XMLPROJECTION = "ELEMENT");
Property intended As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "intended", XMLPROJECTION = "ELEMENT");
Property directnessMatch As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "directnessMatch", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Evidence.variableDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Evidence.variableDefinition";

}
