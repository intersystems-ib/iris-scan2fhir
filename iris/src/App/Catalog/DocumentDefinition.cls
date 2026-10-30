/// Append-only versions. Reports pin an immutable definition, including table-type versions.
Class App.Catalog.DocumentDefinition Extends %Persistent
{
Property Laboratory As App.Catalog.Laboratory [ Required ];
Property Code As %String(MAXLEN = 64) [ Required ];
Property Version As %Integer [ Required ];
Property Definition As %Stream.GlobalCharacter;
Property CreatedAt As %TimeStamp [ InitialExpression = {$zdatetime($horolog,3)} ];
Property Generation As %Stream.GlobalCharacter;
Index KeyIndex On (Laboratory, Code, Version) [ Unique ];
ForeignKey LaboratoryFK(Laboratory) References App.Catalog.Laboratory() [ OnDelete = noaction ];
}
