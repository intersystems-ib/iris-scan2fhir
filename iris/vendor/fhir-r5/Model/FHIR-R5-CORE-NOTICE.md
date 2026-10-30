# FHIR R5 model source and license

The generated ObjectScript model classes in this package are based on the
official HL7 FHIR R5 core StructureDefinitions from the
`hl7.fhir.r5.core` package, version `5.0.0`
(`https://packages.fhir.org/hl7.fhir.r5.core/5.0.0`; specification:
`https://hl7.org/fhir/R5/`). The package metadata declares `CC0-1.0`.

The generated model source is derived from those StructureDefinitions and is
made available under CC0-1.0:
`https://creativecommons.org/publicdomain/zero/1.0/`.

`tools/generate_fhir_r5.py` documents and reproduces the generation from that
pinned package. The package archive is not checked in. Existing ÚNICAS model
classes are augmented in place, and the generator does not copy InterSystems
HealthShare R4 implementation source; it references the installed R4 model
classes for shared base classes and compatible data types. Project source
outside the generated model remains subject to the repository's root `LICENSE`.
