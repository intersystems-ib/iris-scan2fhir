Class Spain.FHIR.DTL.vR5.Model.Element.ObservationDefinition.component Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];
Property permittedDataType As list Of %String(MAXLEN = 1000000, XMLNAME = "permittedDataType", XMLPROJECTION = "ELEMENT");
Property permittedUnit As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "permittedUnit", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition.component";

}

