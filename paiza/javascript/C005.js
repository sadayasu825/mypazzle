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

    let N = parseInt(ipt[0]);
    for (let i = 1; i < N + 1; i++) {
        
        res = ipt[i].match(/^\d+\.\d+\.\d+\.\d+$/);
        if (res === null){
            console.log('False');
            continue;
        }
        let ary = ipt[i].split('.');
        ary = ary.map( value => parseInt(value, 10));
        res = ary.filter( value => value < 0 || value > 255);
        
        console.log((res.length === 0) ? 'True' : 'False');
    }
        
});