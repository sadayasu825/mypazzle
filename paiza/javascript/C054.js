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
    const input = ipt[0].split(' ');
    const N = parseInt(input[0]);
    const border = parseInt(input[1]);
    let t = [];
    let x = [];
    let flag = true;
    
    for (let i = 1; i < N + 1; i++){
 
        let params = ipt[i].split(' ');
        t.push(parseInt(params[0]));
        x.push(parseInt(params[1]));
    }

    for (let j = 0; j < N - 1; j++){
        dt = t[j + 1] - t[j];
        dx = x[j + 1] - x[j];

        if ((dx / dt) > border){
            flag = false;
            break;
        }
    }
    
    console.log((flag === true) ? 'NO' : 'YES');
});