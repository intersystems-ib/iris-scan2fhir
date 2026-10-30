/// Reusable structural schemas; no laboratory-specific analyte list or fixed row count.
Class App.Catalog.TableType Extends %Persistent
{
Property Code As %String(MAXLEN = 64) [ Required ];
Property Version As %Integer [ Required ];
Property Definition As %Stream.GlobalCharacter;
Property CreatedAt As %TimeStamp [ InitialExpression = {$zdatetime($horolog,3)} ];
Index KeyIndex On (Code, Version) [ Unique ];
}
