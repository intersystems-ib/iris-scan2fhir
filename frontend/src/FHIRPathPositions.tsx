export function FHIRPathPositions({path,label,onChange}:{path:string;label:string;onChange:(path:string)=>void}){
  const indexes=[...path.matchAll(/\[(\d+)\]/g)];
  return <>{indexes.map((match,i)=>{
    const start=match.index!,end=start+match[0].length,group=path.slice(0,start);
    return <label key={i}>Elemento de {group}<input type="number" min={1} max={100} step={1} aria-label={'Posición de '+label+' en '+group} value={Number(match[1])+1} onChange={e=>{
      const position=Number(e.target.value);if(Number.isInteger(position)&&position>=1&&position<=100)onChange(path.slice(0,start)+'['+(position-1)+']'+path.slice(end));
    }}/></label>;
  })}</>;
}
