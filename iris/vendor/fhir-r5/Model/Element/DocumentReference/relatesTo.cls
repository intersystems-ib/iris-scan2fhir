Class Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.relatesTo Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// replaces | transforms | signs | appends
/// <p>
/// document-relationship-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-relationship-type|4.0.1 and you may NOT use codes from other ValueSets.
Property code As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Target of the relationship.
/// <p>
/// DocumentReference
Property target As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.relatesTo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.relatesTo";

}
