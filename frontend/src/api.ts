import type {TableSchema} from './catalog';

export interface ReconstructedTable {
  sourceDerivation?:{source:string;page:number;id:string;cells:{row:number;labelLine:number|null;valueParts:{line:number;start:number;end:number}[]}[]};
  id: string; status: 'accepted' | 'review'; reason: string; aiSessionId: string;
  engine?:string;
  extractionMs?:number;
  sourceHtml?:string; sourceCells?:Record<string,{id:string;row:number;cell:number;tag:string;text:string;colspan:number;rowspan:number}>;
  tableType?: {code:string;version:number};
  result?: { kind?:string;sourceHtml:string; coherentHtml:string; expectedStructure:{tableType:{code?:string;name:string;version:number;schema?:TableSchema}}|null;
    columns:{key?:string;group?:string;label:string;sourceHeader:string;valueType?:'numeric'|'text'|'auto';role?:string}[]; rows:{text:string;sourceCells:string[];sourceParts?:{cell:string;start:number;end:number}[];unit?:{text:string;sourceCells:string[]}}[][];
    corrections:{rule:string;sourceCells:string[];message:string}[];
    excludedRows?:{sourceRows:number[];sourceCells:string[];reason:string}[];
    issues:{code:string;sourceCells:string[];message:string}[];
    notes:{text:string;sourceCells:string[]}[];
    rowDetails:{sourceRows:number[];notes:{text:string;sourceCells:string[]}[];issues:{code:string;sourceCells:string[];message:string}[]}[];
    validation:{allNonemptyCellsAccountedFor:boolean};
  };
}
export interface TablePreview {
  analysisId?:string;
  fhir?:FHIRPreview;
  firstPageInformation?:{page:number;status:string;fields:{key:string;label:string;group:string;value:string;sourceLabel:string;sourceStart:number;sourceEnd:number}[];sourceText:string;sourceMarkdown:string;issues:{key:string;message:string}[]};
  mode:'table-preview'|'extraction'|'discovery'; filename:string; laboratoryName:string; documentDefinitionName:string; definitionId:string; definitionVersion:number;
  discovery?:{status:string;tableCount:number;laboratoryIdentified?:boolean};
  steps?:{id:string;status:string;durationMs:number;tableCount?:number;resourceCount?:number}[];
  engine?:string;
  timing?:{ocrMs:number;totalMs:number;extractionMs?:number;normalizationMs?:number;fhirMs?:number};
  acceptedTables:number; reviewTables:number; pages:{page:number;tables:ReconstructedTable[]}[];
  trace:{requestId:string;interopSessionId:string;tableSessions:{page:number;table:string;variant?:string;sessionId:string;status:string}[]};
}
export interface FHIRPreview {status:'ready'|'partial'|'blocked';error?:string;resourceCount:number;bundle?:{resourceType:string;type:string;entry?:{fullUrl:string;resource:Record<string,unknown>}[]};excluded?:{rule:string;page?:number;table?:string;row?:number;reason:string}[];provenance?:unknown[];trace?:{interopSessionId:string;sourceSessionId:string};validationScope?:string;plan?:{issues:{severity:string;message:string;tableName?:string;column?:string;page?:number;table?:string}[];defaults:{tableCode:string;target:string;value:string;reason:string}[];ruleCount:number;source:string}}
export interface Health { maxPdfMB: number; maxPdfPages: number }
export async function request<T>(path: string, init?: RequestInit): Promise<T> {
  const response = await fetch(`/api/app${path}`, init);
  const body = await response.json().catch(() => null);
  if (!response.ok) {
    const message = body?.error?.message ?? `Error del servidor (${response.status}).`;
    const session = response.headers.get('X-Interop-Session-ID') ?? body?.error?.interopSessionId;
    throw new Error(session ? `${message} Sesión de interoperabilidad: ${session}.` : message);
  }
  if (!body) throw new Error('El servidor ha devuelto una respuesta vacía.');
  return body as T;
}


