Class Spain.FHIR.DTL.vR5.Model.Element.DeviceDefinition.chargeItem Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property chargeItemCode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "chargeItemCode", XMLPROJECTION = "ELEMENT") [ Required ];
Property count As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "count", XMLPROJECTION = "ELEMENT") [ Required ];
Property effectivePeriod As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");
Property useContext As list Of Spain.FHIR.DTL.vR5.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.chargeItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.chargeItem";

}
