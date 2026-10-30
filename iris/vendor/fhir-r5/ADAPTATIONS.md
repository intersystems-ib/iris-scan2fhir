The classes and pinned HL7 FHIR R5 core package are copied from the supplied fhir-r5 project.
The original source directory is never modified. Run scripts/sync-fhir-models.ps1 to reproduce the copy.

Local IRIS compatibility adjustments:

- Primitive lists use XML element projection, because XML attributes cannot represent lists.
- Legacy classes named paticipant and Element.Dosage have distinct XMLTYPE and XMLNAME names to avoid collisions
  with their generated counterparts. Their JSON property names and resource names are unchanged.

The official 5.0.0 StructureDefinitions provide path, type, choice and cardinality checks.
Native model checks do not replace implementation-guide or complete terminology validation.
