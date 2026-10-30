Class Spain.FHIR.DTL.vR5.Model.Resource.BiologicallyDerivedProduct Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property productCategory As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "productCategory", XMLPROJECTION = "ELEMENT");
Property productCode As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "productCode", XMLPROJECTION = "ELEMENT");
Property parent As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");
Property request As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property biologicalSourceEvent As Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "biologicalSourceEvent", XMLPROJECTION = "ELEMENT");
Property processingFacility As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "processingFacility", XMLPROJECTION = "ELEMENT");
Property division As %String(MAXLEN = 1000000, XMLNAME = "division", XMLPROJECTION = "ATTRIBUTE");
Property productStatus As Spain.FHIR.DTL.vR5.Model.Datatype.Coding(XMLNAME = "productStatus", XMLPROJECTION = "ELEMENT");
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");
Property collection As Spain.FHIR.DTL.vR5.Model.Element.BiologicallyDerivedProduct.collection(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");
Property storageTempRequirements As Spain.FHIR.DTL.vR5.Model.Datatype.Range(XMLNAME = "storageTempRequirements", XMLPROJECTION = "ELEMENT");
Property property As list Of Spain.FHIR.DTL.vR5.Model.Element.BiologicallyDerivedProduct.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct";

}
