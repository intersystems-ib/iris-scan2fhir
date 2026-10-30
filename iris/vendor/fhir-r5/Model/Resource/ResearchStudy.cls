Class Spain.FHIR.DTL.vR5.Model.Resource.ResearchStudy Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property label As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.label(XMLNAME = "label", XMLPROJECTION = "ELEMENT");
Property protocol As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "protocol", XMLPROJECTION = "ELEMENT");
Property partOf As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");
Property relatedArtifact As list Of Spain.FHIR.DTL.vR5.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property primaryPurposeType As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "primaryPurposeType", XMLPROJECTION = "ELEMENT");
Property phase As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "phase", XMLPROJECTION = "ELEMENT");
Property studyDesign As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "studyDesign", XMLPROJECTION = "ELEMENT");
Property focus As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property condition As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");
Property keyword As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "keyword", XMLPROJECTION = "ELEMENT");
Property region As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "region", XMLPROJECTION = "ELEMENT");
Property descriptionSummary As %String(MAXLEN = 1000000, XMLNAME = "descriptionSummary", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
Property site As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "site", XMLPROJECTION = "ELEMENT");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property classifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "classifier", XMLPROJECTION = "ELEMENT");
Property associatedParty As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.associatedParty(XMLNAME = "associatedParty", XMLPROJECTION = "ELEMENT");
Property progressStatus As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.progressStatus(XMLNAME = "progressStatus", XMLPROJECTION = "ELEMENT");
Property whyStopped As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "whyStopped", XMLPROJECTION = "ELEMENT");
Property recruitment As Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.recruitment(XMLNAME = "recruitment", XMLPROJECTION = "ELEMENT");
Property comparisonGroup As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.comparisonGroup(XMLNAME = "comparisonGroup", XMLPROJECTION = "ELEMENT");
Property objective As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.objective(XMLNAME = "objective", XMLPROJECTION = "ELEMENT");
Property outcomeMeasure As list Of Spain.FHIR.DTL.vR5.Model.Element.ResearchStudy.outcomeMeasure(XMLNAME = "outcomeMeasure", XMLPROJECTION = "ELEMENT");
Property result As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy";

}
