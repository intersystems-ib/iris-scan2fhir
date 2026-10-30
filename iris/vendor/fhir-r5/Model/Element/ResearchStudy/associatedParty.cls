Class Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.associatedParty Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property role As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT") [ Required ];
Property period As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property classifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classifier", XMLPROJECTION = "ELEMENT");
Property party As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy.associatedParty";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy.associatedParty";

}
