Class Spain.FHIR.DTL.vR5.Model.Element.DeviceAssociation.operation Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property status As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];
Property operator As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "operator", XMLPROJECTION = "ELEMENT");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceAssociation.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceAssociation.operation";

}
