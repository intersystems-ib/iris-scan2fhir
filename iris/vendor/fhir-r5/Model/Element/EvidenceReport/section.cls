Class Spain.FHIR.DTL.vR5.Model.Element.EvidenceReport.section Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property focus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property focusReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focusReference", XMLPROJECTION = "ELEMENT");
Property author As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");
Property text As Spain.FHIR.DTL.vR5.Model.Datatype.Narrative(XMLNAME = "text", XMLPROJECTION = "ELEMENT");
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE");
Property orderedBy As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "orderedBy", XMLPROJECTION = "ELEMENT");
Property entryClassifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "entryClassifier", XMLPROJECTION = "ELEMENT");
Property entryReference As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "entryReference", XMLPROJECTION = "ELEMENT");
Property entryQuantity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "entryQuantity", XMLPROJECTION = "ELEMENT");
Property emptyReason As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "emptyReason", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceReport.section";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceReport.section";

}
