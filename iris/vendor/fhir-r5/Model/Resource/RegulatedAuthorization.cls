Class Spain.FHIR.DTL.vR5.Model.Resource.RegulatedAuthorization Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property subject As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property region As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "region", XMLPROJECTION = "ELEMENT");
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");
Property validityPeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");
Property indication As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "indication", XMLPROJECTION = "ELEMENT");
Property intendedUse As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "intendedUse", XMLPROJECTION = "ELEMENT");
Property basis As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "basis", XMLPROJECTION = "ELEMENT");
Property holder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "holder", XMLPROJECTION = "ELEMENT");
Property regulator As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "regulator", XMLPROJECTION = "ELEMENT");
Property attachedDocument As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "attachedDocument", XMLPROJECTION = "ELEMENT");
Property case As Spain.FHIR.DTL.vR5.Model.Element.RegulatedAuthorization.case(XMLNAME = "case", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RegulatedAuthorization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RegulatedAuthorization";

}
