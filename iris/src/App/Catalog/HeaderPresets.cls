/// Editable starter configurations; these are data, not rules embedded in the extraction engine.
Class App.Catalog.HeaderPresets Extends %RegisteredObject
{
ClassMethod JSON() As %String [ Language = python ]
{
    import json
    def field(key,label,group,aliases):
        return {'key':key,'label':label,'group':group,'aliases':aliases,'required':False,'valueType':'text'}
    spanish=[
        field('analysisNumber','Número de análisis','analysis',['Análisis','Analisis','Número de análisis']),
        field('analysisDate','Fecha del análisis','analysis',['Fecha','Fecha del análisis']),
        field('patientName','Paciente','patient',['Paciente','Paclenle','Pacienle','Paclente']),
        field('birthDate','Fecha de nacimiento','patient',['F. Nacimiento','F.Nacimiento','Fecha de nacimiento']),
        field('physician','Médico solicitante','analysis',['Doctor','Doclor','Médico','Médico solicitante']),
        field('origin','Procedencia','analysis',['Procedencia']),
        field('insurer','Entidad aseguradora','analysis',['Entidad aseguradora']),
        field('identityDocument','Documento de identidad','patient',['DNI','NIE','Documento de identidad']),
        field('passport','Pasaporte','patient',['Pasaporte']),
        field('issuedAt','Fecha de emisión','analysis',['Fecha Emisión','Fecha de Emisión','Fecha Emision']),
    ]
    english=[
        field('patientName','Patient','patient',['Patient','Patient name']),
        field('birthDate','Date of birth','patient',['DOB','Date of birth']),
        field('orderNumber','Order number','order',['Order','Order number','Accession']),
        field('sampleNumber','Sample number','specimen',['Sample ID','Specimen ID']),
        field('collectionDate','Collection date','specimen',['Collected','Collection date']),
    ]
    return json.dumps([{'code':'administrative-es','name':'Datos administrativos · Español','configuration':{'fields':spanish,'stopLabels':[]}},
                       {'code':'administrative-en','name':'Datos administrativos · English','configuration':{'fields':english,'stopLabels':[]}}],ensure_ascii=False)
}
}
