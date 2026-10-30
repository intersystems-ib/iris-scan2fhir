Class Spain.FHIR.DTL.vR5.Model.Resource.Group Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property membership As %String(MAXLEN = 1000000, XMLNAME = "membership", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");
Property quantity As %Integer(XMLNAME = "quantity", XMLPROJECTION = "ATTRIBUTE");
Property managingEntity As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "managingEntity", XMLPROJECTION = "ELEMENT");
Property characteristic As list Of Spain.FHIR.DTL.vR5.Model.Element.Group.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");
Property member As list Of Spain.FHIR.DTL.vR5.Model.Element.Group.member(XMLNAME = "member", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Group";

}
