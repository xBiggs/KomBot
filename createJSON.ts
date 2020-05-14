import fs = require('fs');
import excelToJSON = require('convert-excel-to-json');
import jsonFile = require('jsonfile');
import { FrameData } from './interfaces/iFrameData';


const inputFile: string = "KomBot MK9 Framedata.xlsx";
const result = excelToJSON({
    sourceFile: inputFile,
    header: {
        rows: 1
    },
    columnToKey: {
       '*': '{{columnHeader}}'
    }
});

if (!fs.existsSync('./json')) {
    fs.mkdirSync('./json');
}

Object.keys(result).forEach(key => {
    let outputFile: string = `./json/${key}.json`;
    let data: FrameData[] = toString(result[key]);
    jsonFile.writeFile(outputFile, data , (err) => {
        console.error(err);
    });
});

function toString(o: any): any {
    Object.keys(o).forEach(k => {
      if (typeof o[k] === 'object') {
        return toString(o[k]);
      }

      o[k] = '' + o[k];
    });

    return o;
  }