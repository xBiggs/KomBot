import { existsSync } from 'node:fs'
import { writeFile, mkdir } from 'node:fs/promises';
import { default as xlsx2json } from 'convert-excel-to-json';

interface FrameData {
  command: string,
  name: string,
  execution: string,
  startup: string,
  level: string,
  block: string,
  hit: string,
  blockCancel: string,
  hitCancel: string,
  notes: string,
  image: string,
}

const file = "KomBot MK9 Framedata.xlsx";

// if (!existsSync('./json/')) await mkdir('json');

function toString(o: any): any {
  Object.keys(o).forEach(k => {
    if (typeof o[k] === 'object') {
      return toString(o[k]);
    }
    o[k] = '' + o[k];
  });
  return o;
}

const result = xlsx2json({
  sourceFile: file,
  header: {
    rows: 1
  },
  columnToKey: {
    '*': '{{columnHeader}}'
  },
});

for (const key in result) {
  const outfile = `./json/${key}.json`;
  const data: FrameData[] = toString(result[key]);
  console.log(outfile);
  console.log(data);
  // await writeFile(outfile, JSON.stringify(data));
}
