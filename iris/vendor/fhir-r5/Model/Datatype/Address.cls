Class Spain.FHIR.DTL.vR5.Model.Datatype.Address Extends HS.FHIR.DTL.vR4.Model.Base.Element
{

/// String
/// <p>
/// addressUrl.
/// <p>
Property addressUrl As %String(MAXLEN = 1000000, XMLNAME = "addressUrl", XMLPROJECTION = "ATTRIBUTE");

/// String
/// <p>
/// addressUrl.
/// <p>
Property addressString As %String(MAXLEN = 1000000, XMLNAME = "addressString", XMLPROJECTION = "ATTRIBUTE");

/// ContactPoint
/// <p>
/// addressContactPoint.
Property addressContactPoint As list Of HS.FHIR.DTL.vR4.Model.Datatype.ContactPoint(XMLNAME = "addressContactPoint", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// addressExtendedContactDetail.
Property addressExtendedContactDetail As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "addressContactPoint", XMLPROJECTION = "ELEMENT");



// BEGIN GENERATED FHIR R5 PROPERTIES
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");
Property line As list Of %String(MAXLEN = 1000000, XMLNAME = "line", XMLPROJECTION = "ELEMENT");
Property city As %String(MAXLEN = 1000000, XMLNAME = "city", XMLPROJECTION = "ATTRIBUTE");
Property district As %String(MAXLEN = 1000000, XMLNAME = "district", XMLPROJECTION = "ATTRIBUTE");
Property state As %String(MAXLEN = 1000000, XMLNAME = "state", XMLPROJECTION = "ATTRIBUTE");
Property postalCode As %String(MAXLEN = 1000000, XMLNAME = "postalCode", XMLPROJECTION = "ATTRIBUTE");
Property country As %String(MAXLEN = 1000000, XMLNAME = "country", XMLPROJECTION = "ATTRIBUTE");
Property period As Spain.FHIR.DTL.vR5.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");
// END GENERATED FHIR R5 PROPERTIES

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Address";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Address";

}

