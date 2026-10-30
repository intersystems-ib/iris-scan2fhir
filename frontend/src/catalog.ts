export type ColumnRole = 'test' | 'value' | 'unit' | 'referenceRange' | 'note';
export interface TableColumn { key: string; label: string; role: ColumnRole; group: string; required: boolean; valueType?: 'numeric'|'text'|'auto' }
export interface TableFHIR {resourceType:string;dataType:string;target:string}
export interface RowFHIRMapping {resourceType:string;columns:{key:string;target:string;dataType:string;dateFormat?:string}[];defaults?:{target:string;value:string|number|boolean}[]}
export interface InformationFHIRMapping {resources:{id:string;name:string;resourceType:string;defaults?:RowFHIRMapping['defaults']}[];columns:(RowFHIRMapping['columns'][number]&{resourceId:string})[]}
export interface TableSchema { columns: TableColumn[]; allowSplitRows: boolean; allowMissingHeaders: boolean; allowCombinedValueUnit: boolean; allowMultilineReferences: boolean; producesResults: boolean;fhir?:TableFHIR|null;rowMapping?:RowFHIRMapping|null;informationMapping?:InformationFHIRMapping|null;kind?:'records'|'label-value'|'unclassified'|'grid';grid?:{headers:string[];spans:{start:number;end:number}[];width:number;headerless:boolean};pageScope?:'first'|'all';labelFields?:HeaderField[];stopLabels?:string[];labelMatchMode?:'any'|'all' }
export interface TableType { id: string; code: string; name: string; version: number; isLatest: boolean; schema: TableSchema }
export interface Laboratory { code: string; name: string; enabled: boolean; revision: number; recognitionAliases?:string[] }
export interface HeaderField { key:string;label:string;group:string;aliases:string[];required:boolean;valueType:'text'|'numeric' }
export interface HeaderExtraction { fields:HeaderField[];stopLabels:string[] }
export type FHIRSource = {kind:'header';key:string}|{kind:'column';key:string;row:number|null}|{kind:'groupColumn';tableCode:string;tableIndex:number;row:number;key:string}|{kind:'cell';id:string}|{kind:'constant';value:string|number|boolean}|{kind:'document';key:string}|{kind:'resource';rule:string;mode:'one'|'all';scope:'document'|'group'|'table'|'row'};
export interface FHIRField {target:string;source:FHIRSource;transform:string;required:boolean;unitColumn:string;dateFormat:string}
export interface FHIRRule {id:string;resourceType:string;repeat:'document'|'group'|'table'|'row';selector:{kind:'header'}|{kind:'group';code:string}|{kind:'tableType';code:string;version:number}|{kind:'table';page:number;table:string};fields:FHIRField[];filter:{column:string;equals:string}|null}
export interface TableGroup {code:string;name:string;tables:string[]}
export interface FHIRMapping {enabled:boolean;rules:FHIRRule[]}
export interface DocumentDefinition {
  id: string; laboratory: string; laboratoryName: string; code: string; name: string; version: number; isLatest: boolean; enabled: boolean;
  recognition: { issuerPhrases: string[]; domains: string[]; documentPhrases: string[]; headerMode: string; headerSignatures?: string[]; headerSignatureVersion?: number };
  generation?: { mode: string; interopSessionId: string; aiSessionId: string; sourceFingerprint: string };
  headerAliases: Record<'name' | 'value' | 'unit' | 'referenceRange', string[]>;
  tableTypes: { code: string; version: number }[];
  headerExtraction?:HeaderExtraction;
  fhirMapping?:FHIRMapping;
  tables?:TableType[];
  tableTypeDefinitions?:TableType[];
  tableGroups?:TableGroup[];
}
export interface Catalog { laboratories: Laboratory[]; tableTypes: TableType[]; documents: DocumentDefinition[];headerPresets?:{code:string;name:string;configuration:HeaderExtraction}[] }
export interface MappingPreview { columns: { label: string }[]; rows: { text: string; sourceCells: string[] }[][]; issues?:{message:string}[]; catalogTrace: { interopSessionId: string; aiSessionId: string } }
export const defaultAliases = { name: ['Prueba', 'Determinación', 'Analito'], value: ['Resultado', 'Valor'], unit: ['Unidades', 'Unidad'], referenceRange: ['Valores de referencia', 'Referencia'] };
export const emptySchema = (): TableSchema => ({ columns: [
  {key:'test',label:'Prueba',role:'test',group:'',required:true},
  {key:'value',label:'Resultado',role:'value',group:'primary',required:true,valueType:'numeric'},
  {key:'unit',label:'Unidad',role:'unit',group:'primary',required:false},
  {key:'reference-range',label:'Referencia',role:'referenceRange',group:'primary',required:false},
], allowSplitRows:true,allowMissingHeaders:true,allowCombinedValueUnit:true,allowMultilineReferences:true,producesResults:true });


