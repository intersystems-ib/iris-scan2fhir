Class Spain.FHIR.DTL.vR5.Model.Resource.SubstancePolymer Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property class As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");
Property geometry As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "geometry", XMLPROJECTION = "ELEMENT");
Property copolymerConnectivity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "copolymerConnectivity", XMLPROJECTION = "ELEMENT");
Property modification As %String(MAXLEN = 1000000, XMLNAME = "modification", XMLPROJECTION = "ATTRIBUTE");
Property monomerSet As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.monomerSet(XMLNAME = "monomerSet", XMLPROJECTION = "ELEMENT");
Property repeat As list Of Spain.FHIR.DTL.vR5.Model.Element.SubstancePolymer.repeat(XMLNAME = "repeat", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer";

}
