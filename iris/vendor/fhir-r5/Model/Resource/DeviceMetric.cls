Class Spain.FHIR.DTL.vR5.Model.Resource.DeviceMetric Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];
Property unit As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");
Property device As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT") [ Required ];
Property operationalStatus As %String(MAXLEN = 1000000, XMLNAME = "operationalStatus", XMLPROJECTION = "ATTRIBUTE");
Property color As %String(MAXLEN = 1000000, XMLNAME = "color", XMLPROJECTION = "ATTRIBUTE");
Property category As %String(MAXLEN = 1000000, XMLNAME = "category", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property measurementFrequency As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "measurementFrequency", XMLPROJECTION = "ELEMENT");
Property calibration As list Of Spain.FHIR.DTL.vR5.Model.Element.DeviceMetric.calibration(XMLNAME = "calibration", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceMetric";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceMetric";

}
