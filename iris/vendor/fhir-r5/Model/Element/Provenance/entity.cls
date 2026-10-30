Class Spain.FHIR.DTL.vR5.Model.Element.Provenance.entity Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property role As %String(MAXLEN = 1000000, XMLNAME = "role", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property what As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "what", XMLPROJECTION = "ELEMENT") [ Required ];
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Provenance.entity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Provenance.entity";

}
