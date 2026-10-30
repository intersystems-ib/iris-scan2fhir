Class Spain.FHIR.DTL.vR5.Model.Resource.Provenance Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property target As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT") [ Required ];
Property occurredPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "occurredPeriod", XMLPROJECTION = "ELEMENT");
Property occurredDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurredDateTime", XMLPROJECTION = "ATTRIBUTE");
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE");
Property policy As list Of %String(MAXLEN = 1000000, XMLNAME = "policy", XMLPROJECTION = "ELEMENT");
Property location As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");
Property authorization As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "authorization", XMLPROJECTION = "ELEMENT");
Property activity As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "activity", XMLPROJECTION = "ELEMENT");
Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");
Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");
Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");
Property agent As list Of Spain.FHIR.DTL.vR5.Model.Element.Provenance.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT") [ Required ];
Property entity As list Of Spain.FHIR.DTL.vR5.Model.Element.Provenance.entity(XMLNAME = "entity", XMLPROJECTION = "ELEMENT");
Property signature As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Signature(XMLNAME = "signature", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Provenance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Provenance";

}

