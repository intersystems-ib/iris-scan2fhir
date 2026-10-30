Class App.Catalog.Laboratory Extends %Persistent
{
Property Code As %String(MAXLEN = 64) [ Required ];
Property Name As %String(MAXLEN = 160) [ Required ];
Property Enabled As %Boolean [ InitialExpression = 1 ];
Property Revision As %Integer [ InitialExpression = 1 ];
Property RecognitionAliases As %String(MAXLEN = 8192);
Index CodeIndex On Code [ Unique ];
}
