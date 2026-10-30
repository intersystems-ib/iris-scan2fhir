Class Spain.FHIR.DTL.vR5.Model.Datatype.SampledData Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property origin As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "origin", XMLPROJECTION = "ELEMENT") [ Required ];
Property interval As %Numeric(XMLNAME = "interval", XMLPROJECTION = "ATTRIBUTE");
Property intervalUnit As %String(MAXLEN = 1000000, XMLNAME = "intervalUnit", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property factor As %Numeric(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");
Property lowerLimit As %Numeric(XMLNAME = "lowerLimit", XMLPROJECTION = "ATTRIBUTE");
Property upperLimit As %Numeric(XMLNAME = "upperLimit", XMLPROJECTION = "ATTRIBUTE");
Property dimensions As %Integer(XMLNAME = "dimensions", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property codeMap As %String(MAXLEN = 1000000, XMLNAME = "codeMap", XMLPROJECTION = "ATTRIBUTE");
Property offsets As %String(MAXLEN = 1000000, XMLNAME = "offsets", XMLPROJECTION = "ATTRIBUTE");
Property data As %String(MAXLEN = 1000000, XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SampledData";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SampledData";

}
