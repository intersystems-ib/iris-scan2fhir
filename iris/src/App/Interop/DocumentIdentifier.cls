/// Select an existing template by its issuer and table structure.
Class App.Interop.DocumentIdentifier Extends %RegisteredObject
{
/// Initial aliases remove only leading institution descriptors, retaining the distinctive name.
ClassMethod LaboratoryAliases(name As %String, stored As %String = "") As %String [ Language = python ]
{
    import json,unicodedata
    if stored:return stored
    def norm(v):return ''.join(c for c in unicodedata.normalize('NFKD',v.casefold()) if not unicodedata.combining(c))
    words=name.split();generic={'clinica','clinico','clinicas','clinicos','laboratorio','laboratorios','hospital','hospitales','centro','centros','universitario','universitaria','de','del','la','el','los','las'}
    while words and norm(words[0]) in generic:words.pop(0)
    distinctive=' '.join(words)
    return json.dumps(list(dict.fromkeys([name]+([distinctive] if len(distinctive)>=4 else []))),ensure_ascii=False)
}

ClassMethod Identify(pagesJSON As %String, catalogJSON As %String = "") As %String [ Language = python ]
{
    import json,re,unicodedata,iris
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def norm(value):return ' '.join(''.join(c for c in unicodedata.normalize('NFKD',value.casefold()) if not unicodedata.combining(c)).split()).strip(' :.');
    def run():
        pages=json.loads(pagesJSON)
        if not isinstance(pages,list) or not pages:raise runtime.ProcessingError('No hay páginas para identificar la plantilla.')
        catalog=json.loads(catalogJSON or iris.cls('App.Catalog.Repository').SnapshotJSON())
        labs={l['code']:l for l in catalog['laboratories'] if l['enabled']}
        lab_aliases={code:lab.get('recognitionAliases',json.loads(iris.cls('App.Interop.DocumentIdentifier').LaboratoryAliases(lab['name']))) for code,lab in labs.items()}
        documents=[d for d in catalog['documents'] if d['isLatest'] and d['laboratory'] in labs]
        facts=json.loads(iris.cls('App.Interop.TableStructure').Facts(pagesJSON))
        observed=set(facts['headerSignatures']);matches=[];origins=set();evidence=[]
        texts=[norm(p.get('text','')+'\n'+re.sub('<[^>]+>',' ',p.get('markdown',''))) for p in pages]
        for doc in documents:
            rec=doc['recognition'];issuer=False
            patterns=[r'(?<!\w)'+re.escape(norm(v)).replace(r'\ ',r'\s+')+r'(?!\w)' for v in [*rec['issuerPhrases'],*lab_aliases[doc['laboratory']]]]
            patterns += [r'\b'+r'[\W_]+'.join(re.escape(w) for w in re.findall(r'\w+',norm(v)))+r'\b' for v in rec['domains']]
            for page,text in zip(pages,texts):
                found=next((m for pattern in patterns for m in re.finditer(pattern,text) if not re.search(r'(?:solicitante|remitente|enviado por)\s*:\s*(?:www[.\s]*)?$',text[max(0,m.start()-60):m.start()])),None)
                if found:
                    issuer=True;origins.add(doc['laboratory']);evidence.append({'page':page['page'],'signal':'issuer-signature','text':found.group(0),'definitionId':doc['id']})
            if not issuer:continue
            if not doc['enabled']:continue
            if rec['documentPhrases'] and not any(norm(phrase) in text for phrase in rec['documentPhrases'] for text in texts):continue
            signatures=set(rec.get('headerSignatures',[]))
            # Labels in administrative tables may be TH cells too; their values are not format signatures.
            document_observed=set()
            for table in facts['tables']:
                headers={str(i):h for i,h in enumerate(table['headers'])}
                roles={role for h in headers.values() for role,aliases in doc['headerAliases'].items() if norm(h['text']) in {norm(v) for v in aliases}}
                labels=json.loads(iris.cls('App.Interop.DocumentDiscovery').Labels(json.dumps(headers)))
                if {'name','value'}<=roles or not labels:document_observed.add(table['signature'])
            if signatures and (not document_observed or not document_observed<=signatures):continue
            compatible=rec['headerMode'] in ('issuer-laboratory','learned-structure') and facts['hasData']
            if any(t['schema'].get('kind')=='grid' for t in doc.get('tableTypeDefinitions',[])):
                compatible=bool(iris.cls('App.Interop.DocumentDiscovery').Covers(pagesJSON,json.dumps(doc)))
            for table in facts['tables']:
                cells={norm(h['text']) for h in table['headers']}
                roles={role for role,aliases in doc['headerAliases'].items() if cells & {norm(v) for v in aliases}}
                if rec['headerMode']=='four-column' and {'name','value','unit','referenceRange'}<=roles:compatible=True
                if rec['headerMode']=='name-value' and {'name','value'}<=roles:compatible=True
            if compatible:matches.append(doc)
        # Identify the issuer even before its first format has been configured or activated.
        if not origins:
            for lab in labs.values():
                names=[norm(v) for v in lab_aliases[lab['code']] if len(norm(v))>=4]
                if not names:continue
                pattern=r'(?<!\w)(?:'+'|'.join(re.escape(v) for v in names)+r')(?!\w)'
                for page,text in zip(pages,texts):
                    found=next((m for m in re.finditer(pattern,text) if not re.search(r'(?:solicitante|remitente|enviado por)\s*:\s*$',text[max(0,m.start()-60):m.start()])),None)
                    if found:
                        origins.add(lab['code']);evidence.append({'page':page['page'],'signal':'laboratory-name','text':found.group(0),'laboratory':lab['code']})
        result={'origin':next(iter(origins)) if len(origins)==1 else 'unknown','format':'unknown','evidence':evidence,
                'reason':'No hay una plantilla única compatible; seleccione un modelo de informe.'}
        if len(origins)==1 and len(matches)==1:
            doc=matches[0]
            result.update(format=f'{doc["code"]}-v{doc["version"]}',definitionId=doc['id'],definitionVersion=doc['version'],
                          laboratoryName=doc['laboratoryName'],documentDefinitionName=doc['name'],definitionSnapshot=doc,
                          reason=f'Plantilla «{doc["name"]}», versión {doc["version"]}, reconocida por firma y estructura.')
        elif len(matches)>1:result['reason']='Coinciden varias plantillas; seleccione el modelo que desea probar.'
        return result
    return runtime.stage_envelope(run)
}
}
