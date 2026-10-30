Class App.Interop.Production Extends Ens.Production
{
XData ProductionDefinition
{
<Production Name="App.Interop.Production" LogGeneralTraceEvents="true">
  <Item Name="Laboratory Table Preview Service" ClassName="App.Interop.TablePreviewService" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Laboratory Table Preview Process" ClassName="App.Interop.TablePreviewProcess" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Laboratory Catalog Service" ClassName="App.Interop.CatalogService" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Laboratory Catalog Operation" ClassName="App.Interop.CatalogOperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Indra OCR Operation" ClassName="App.Interop.OCROperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Document Identification Operation" ClassName="App.Interop.DocumentIdentificationOperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Document Content Cleaning Operation" ClassName="App.Interop.DocumentContentOperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Laboratory Table Mapping Service" ClassName="App.Interop.TableMappingService" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="Deterministic Table Operation" ClassName="App.Interop.DeterministicTableOperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="FHIR Mapping Service" ClassName="App.Interop.FHIRMappingService" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="FHIR Mapping Process" ClassName="App.Interop.FHIRMappingProcess" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
  <Item Name="FHIR Mapping Operation" ClassName="App.Interop.FHIRMappingOperation" PoolSize="1" Enabled="true" Foreground="false" LogTraceEvents="true" />
</Production>
}
}

