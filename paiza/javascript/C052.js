process.stdin.resume();
process.stdin.setEncoding('utf8');

var ipt = []; // 標準入力から与えられた各行を保存する変数：input_lines
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  ipt.push(line);
});
reader.on('close', () => {
    
    let screenSize = ipt[0].split(' ');
    let height = parseInt(screenSize[0]);
    let bottom = parseInt(screenSize[1]);
    
    let dydx = ipt[1].split(' ');
    let dy = Math.abs(parseInt(dydx[0]));
    let dx = Math.abs(parseInt(dydx[1]));
    
    console.log((height * dx) + (bottom * dy) - (dy * dx));
    
});
