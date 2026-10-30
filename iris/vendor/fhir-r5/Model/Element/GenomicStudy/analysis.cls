Class Spain.FHIR.DTL.vR5.Model.Element.GenomicStudy.analysis Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{
/// Generated from the HL7 FHIR R5 core StructureDefinitions (5.0.0).

// BEGIN GENERATED FHIR R5 PROPERTIES
Property identifier As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");
Property methodType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "methodType", XMLPROJECTION = "ELEMENT");
Property changeType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "changeType", XMLPROJECTION = "ELEMENT");
Property genomeBuild As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableConcept(XMLNAME = "genomeBuild", XMLPROJECTION = "ELEMENT");
Property instantiatesCanonical As %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ATTRIBUTE");
Property instantiatesUri As %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");
Property focus As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");
Property specimen As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");
Property note As list Of Spain.FHIR.DTL.vR5.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");
Property protocolPerformed As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "protocolPerformed", XMLPROJECTION = "ELEMENT");
Property regionsStudied As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "regionsStudied", XMLPROJECTION = "ELEMENT");
Property regionsCalled As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "regionsCalled", XMLPROJECTION = "ELEMENT");
Property input As list Of Spain.FHIR.DTL.vR5.Model.Element.GenomicStudy.analysis.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT");
Property output As list Of Spain.FHIR.DTL.vR5.Model.Element.GenomicStudy.analysis.output(XMLNAME = "output", XMLPROJECTION = "ELEMENT");
Property performer As list Of Spain.FHIR.DTL.vR5.Model.Element.GenomicStudy.analysis.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");
Property device As list Of Spain.FHIR.DTL.vR5.Model.Element.GenomicStudy.analysis.device(XMLNAME = "device", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GenomicStudy.analysis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GenomicStudy.analysis";

}
