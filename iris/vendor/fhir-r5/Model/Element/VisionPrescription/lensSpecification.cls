Class Spain.FHIR.DTL.vR5.Model.Element.VisionPrescription.lensSpecification Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property product As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "product", XMLPROJECTION = "ELEMENT") [ Required ];
Property eye As %String(MAXLEN = 1000000, XMLNAME = "eye", XMLPROJECTION = "ATTRIBUTE") [ Required ];
Property sphere As %Numeric(XMLNAME = "sphere", XMLPROJECTION = "ATTRIBUTE");
Property cylinder As %Numeric(XMLNAME = "cylinder", XMLPROJECTION = "ATTRIBUTE");
Property axis As %Integer(XMLNAME = "axis", XMLPROJECTION = "ATTRIBUTE");
Property prism As list Of Spain.FHIR.DTL.vR5.Model.Element.VisionPrescription.lensSpecification.prism(XMLNAME = "prism", XMLPROJECTION = "ELEMENT");
Property add As %Numeric(XMLNAME = "add", XMLPROJECTION = "ATTRIBUTE");
Property power As %Numeric(XMLNAME = "power", XMLPROJECTION = "ATTRIBUTE");
Property backCurve As %Numeric(XMLNAME = "backCurve", XMLPROJECTION = "ATTRIBUTE");
Property diameter As %Numeric(XMLNAME = "diameter", XMLPROJECTION = "ATTRIBUTE");
Property duration As Spain.FHIR.DTL.vR5.Model.Datatype.Quantity(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");
Property color As %String(MAXLEN = 1000000, XMLNAME = "color", XMLPROJECTION = "ATTRIBUTE");
Property brand As %String(MAXLEN = 1000000, XMLNAME = "brand", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VisionPrescription.lensSpecification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VisionPrescription.lensSpecification";

}
