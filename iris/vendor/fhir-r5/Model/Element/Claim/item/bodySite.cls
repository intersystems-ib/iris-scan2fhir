Class Spain.FHIR.DTL.vR5.Model.Element.Claim.item.bodySite Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property site As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "site", XMLPROJECTION = "ELEMENT") [ Required ];
Property subSite As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "subSite", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.item.bodySite";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.item.bodySite";

}
