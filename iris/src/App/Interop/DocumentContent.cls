/// Build an analysis view. Original OCR and its coordinates are never modified.
Class App.Interop.DocumentContent Extends %RegisteredObject
{
ClassMethod Clean(pagesJSON As %String) As %String [ Language = python ]
{
    import copy, html, json, re, unicodedata, iris
    from collections import Counter, defaultdict
    runtime=iris.cls('App.Interop.PythonProcessor').Context()
    def norm(text):
        text=html.unescape(re.sub(r'<[^>]+>',' ',text))
        text=''.join(c for c in unicodedata.normalize('NFKD',text.casefold()) if not unicodedata.combining(c))
        return ' '.join(re.findall(r'\w+|[^\w\s#]',text))
    def tokens(text):
        return Counter(norm(text).split())
    def box(item):
        value=item.get('bbox',[])
        return value if len(value)==4 and all(isinstance(x,(int,float)) for x in value) else None
    def inside(line, region):
        b=box(line)
        if not b or not region: return False
        x,y=(b[0]+b[2])/2,(b[1]+b[3])/2
        return region[0]-2<=x<=region[2]+2 and region[1]-2<=y<=region[3]+2
    def institution(text):
        return bool(re.search(r'\b(?:laboratorios?|clinicos?|www|recoletas)\b',norm(text)))
    def clinical(text):
        return bool(re.search(r'\b(?:resultado|resultados|unidades|referencia|positivo|negativo|validacion|interpretacion)\b',norm(text)) or re.search(r'\d[\d.,]*\s*(?:%|(?:mg|g|mmol|mol|UI|U|mL)\s*/)',text,re.I))
    def column_header(text):
        value=norm(text)
        return len(value.split())<=16 and bool(re.search(r'\b(?:prueba|pruebas|determinacion|analito)\b',value) and re.search(r'\bresultado\b',value) and re.search(r'\b(?:unidades|referencia)\b',value))
    def signature(text):
        return re.sub(r'\b(?:pagina|page)\s+\d+\s+(?:de|of|/)\s+\d+\b','page-counter',norm(text))
    def run():
        pages=copy.deepcopy(json.loads(pagesJSON))
        if not isinstance(pages,list) or not pages:
            raise runtime.ProcessingError('No hay páginas para limpiar.')
        recurring=defaultdict(set)
        for page in pages:
            layout=page.get('layout') or {}
            blocks=layout.get('blocks') or []
            extent=max([box(b)[3] for b in (blocks+(layout.get('lines') or [])) if box(b)] or [0])
            for b in blocks:
                bounds=box(b); key=signature(b.get('text',''))
                if not bounds or len(key)<8 or not extent: continue
                if bounds[3]<extent*.18: recurring[('header',key)].add(page['page'])
                if bounds[1]>extent*.8: recurring[('footer',key)].add(page['page'])
        for index,page in enumerate(pages):
            # Ignore any pre-supplied analysis view; derive it only from original OCR.
            page.pop('content',None)
            layout=copy.deepcopy(page.get('layout') or {})
            lines=layout.get('lines') or []
            blocks=layout.get('blocks') or []
            meta={'version':'1','headersIgnored':index>0,'footersIgnored':True,'removedLines':[], 'removedBlocks':[]}
            if not lines or not any(box(line) for line in lines) or norm(page.get('text',''))!=norm('\n'.join(line.get('text','') for line in lines)):
                meta.update(status='geometry-unavailable',headersIgnored=False,footersIgnored=False,reason='Sin posiciones OCR completas y fiables; no se aplica un recorte por porcentajes.')
                page['content']={'text':page.get('text',''),'markdown':page.get('markdown') or '', 'layout':layout,'filter':meta}
                continue
            extent=max([box(b)[3] for b in blocks+lines if box(b)] or [0])
            marked={}
            for bi,b in enumerate(blocks):
                bounds=box(b); label=b.get('label',''); text=b.get('text',''); key=signature(text)
                if label=='Page-Footer': marked[bi]='page-footer'
                elif label=='Page-Header' and index>0 and not column_header(text): marked[bi]='page-header'
                elif bounds and not clinical(text):
                    # A footer rendered as a table is removable only with a recurring institution signature.
                    footer_safe=label not in ('Table','Section-Header') or institution(text)
                    if bounds[1]>extent*.8 and footer_safe and len(recurring[('footer',key)])>=2:
                        marked[bi]='repeated-footer'
                    elif index>0 and bounds[3]<extent*.18 and label not in ('Table','Section-Header') and len(recurring[('header',key)])>=2:
                        marked[bi]='repeated-header'
                    elif bounds[1]>extent*.8 and re.fullmatch(r'(?:pagina|page)\s+\d+\s+(?:de|of|/)\s+\d+',norm(text)):
                        marked[bi]='page-counter'
            # Extend confirmed margins across the page; retain clinical tables and section headings.
            header_end=max([box(blocks[i])[3] for i,r in marked.items() if 'header' in r and box(blocks[i])] or [0])
            footer_start=min([box(blocks[i])[1] for i,r in marked.items() if ('footer' in r or r=='page-counter') and box(blocks[i]) and box(blocks[i])[1]>extent*.75] or [float('inf')])
            protected=[box(b) for i,b in enumerate(blocks) if i not in marked and (b.get('label')=='Table' or column_header(b.get('text','')) or (b.get('label')=='Section-Header' and not institution(b.get('text','')))) and box(b)]
            removed=set()
            for li,line in enumerate(lines):
                b=box(line)
                if not b: continue
                hits=[marked[bi] for bi in marked if inside(line,box(blocks[bi]))]
                reason=hits[0] if hits else ('header-region' if index>0 and (b[1]+b[3])/2<=header_end else 'footer-region' if (b[1]+b[3])/2>=footer_start else '')
                if reason and not any(inside(line,p) for p in protected):
                    removed.add(li)
                    meta['removedLines'].append({'id':line.get('id',li+1),'reason':reason,'bbox':b})
            dropped=set()
            clean_blocks=[]
            for bi,b in enumerate(blocks):
                members=[li for li,line in enumerate(lines) if inside(line,box(b))]
                if bi in marked or (members and all(li in removed for li in members)):
                    dropped.add(bi)
                    meta['removedBlocks'].append({'id':bi+1,'label':b.get('label',''),'bbox':b.get('bbox',[]),'reason':marked.get(bi,'margin-region')})
                else:
                    kept=copy.deepcopy(b)
                    if any(li in removed for li in members): kept['text']='\n'.join(lines[li].get('text','') for li in members if li not in removed)
                    clean_blocks.append(kept)
            # Match complete Markdown blocks to OCR blocks using their token multiset.
            # HTML tables are atomic: never delete matching words globally or break cell structure.
            md=page.get('markdown') or ''
            segments=[]; cursor=0
            for match in re.finditer(r'<table\b[^>]*>.*?</table>',md,re.I|re.S):
                segments.extend(p for p in re.split(r'\n\s*\n',md[cursor:match.start()]) if p.strip())
                segments.append(match.group(0)); cursor=match.end()
            segments.extend(p for p in re.split(r'\n\s*\n',md[cursor:]) if p.strip())
            output=[]; used=set(); removed_parts=0
            for part in segments:
                pt=tokens(part); scores=[]
                for bi,b in enumerate(blocks):
                    if bi in used: continue
                    bt=tokens(b.get('text',''))
                    score=sum((pt&bt).values())/max(sum(pt.values()),sum(bt.values()),1)
                    scores.append((score,bi))
                score,bi=max(scores,key=lambda item:(item[0],-item[1]),default=(0,-1))
                if score>=.85:
                    used.add(bi)
                    if bi in dropped:
                        removed_parts+=1; continue
                    members=[li for li,line in enumerate(lines) if inside(line,box(blocks[bi]))]
                    if any(li in removed for li in members) and not re.match(r'\s*<table\b',part,re.I):
                        part='\n'.join(lines[li].get('text','') for li in members if li not in removed)
                output.append(part)
            # In a geometry-only OCR response, plain text is the authoritative analysis source.
            kept_lines=[line for li,line in enumerate(lines) if li not in removed]
            layout['lines'],layout['blocks']=kept_lines,clean_blocks
            meta.update(status='filtered',removedMarkdownParts=removed_parts,keptLineCount=len(kept_lines))
            page['content']={'text':'\n'.join(line.get('text','') for line in kept_lines),'markdown':'\n\n'.join(output),'layout':layout,'filter':meta}
        return json.loads(iris.cls('App.Interop.InformationTables').Enrich(json.dumps(pages,ensure_ascii=False)))
    return runtime.stage_envelope(run)
}
}
