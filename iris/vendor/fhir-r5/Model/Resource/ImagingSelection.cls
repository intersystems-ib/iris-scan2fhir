Class Spain.FHIR.DTL.vR5.Model.Resource.ImagingSelection Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property category As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property studyUid As %String(MAXLEN = 1000000, XMLNAME = "studyUid", XMLPROJECTION = "ATTRIBUTE");
Property derivedFrom As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");
Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");
Property seriesUid As %String(MAXLEN = 1000000, XMLNAME = "seriesUid", XMLPROJECTION = "ATTRIBUTE");
Property seriesNumber As %Integer(XMLNAME = "seriesNumber", XMLPROJECTION = "ATTRIBUTE");
Property frameOfReferenceUid As %String(MAXLEN = 1000000, XMLNAME = "frameOfReferenceUid", XMLPROJECTION = "ATTRIBUTE");
Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");
Property focus As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property instance As list Of Spain.FHIR.DTL.vR5.Model.Element.ImagingSelection.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingSelection";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingSelection";

}
