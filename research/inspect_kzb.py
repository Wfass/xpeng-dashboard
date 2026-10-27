"""Read-only KZBF 3.3 directory inspector, verified against this firmware's Kanzi loader."""
import pathlib,struct,json,sys,zlib
source=pathlib.Path(sys.argv[1]);data=source.read_bytes()
assert data[:4]==b'KZBF'
name_len=struct.unpack_from('<I',data,8)[0]
project=data[12:12+name_len].decode();pos=12+name_len
count=struct.unpack_from('<I',data,pos)[0];pos+=4;names=[]
for _ in range(count):
 end=data.index(0,pos);names.append(data[pos:end].decode());pos=end+1
entries=struct.unpack_from('<I',data,pos)[0];pos+=4
out=source.parent/'card-inspection';out.mkdir(exist_ok=True)
index=[]
for _ in range(entries):
 name_id,meta,offset,length,flags,raw_size=struct.unpack_from('<6I',data,pos);pos+=24
 assert name_id<len(names) and offset+length<=len(data)
 entry=dict(name=names[name_id],metaclass=meta,offset=offset,length=length,flags=flags,raw_size=raw_size)
 index.append(entry)
 if 'Card_Music' in entry['name'] or entry['name'] in ('/$property_dictionary','/$metaclass_dictionary','/$strings'):
  blob=data[offset:offset+length]
  (out/(entry['name'].replace('/','_')+'.bin')).write_bytes(blob)
  print(entry)
(out/'directory.json').write_text(json.dumps(dict(project=project,entries=index),ensure_ascii=False,indent=2))
print('Validated',entries,'entries; source unchanged')
