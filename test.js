var _ = require('lodash');
var fs = require('fs');
var XLSX = require('xlsx');

// read stylesheet
var workbook = XLSX.readFile('test.xls');
var sheet_name = workbook.SheetNames[0]; // get sheet name
var worksheet = workbook.Sheets[sheet_name]; // get worksheet object
var first_cell = worksheet['A1'];
console.log(first_cell.v);
console.log(XLSX.utils.sheet_to_json(worksheet));
// var dataObj = XLSX.utils.sheet_to_json(worksheet); // convert worksheet content to json object

// write data to xls
var data = [['leno',20],['jack',40]];
var wb = XLSX.utils.book_new(); // create workbook
var ws = XLSX.utils.aoa_to_sheet(data);// create worksheet
var ws_name = 'worksheet';
XLSX.utils.book_append_sheet(wb, ws, ws_name); // add worksheet to workbook
XLSX.writeFile(wb, 'output.xlsx'); // write xls to file


// read file
var fileContent = fs.readFileSync('test.js'); 
console.log(fileContent.toString());
fs.writeFileSync('test-1.js', fileContent.toString());

