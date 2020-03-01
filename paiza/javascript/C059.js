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
// 取得した値を標準出力するために"XXXXXX"をどう書き換える？
// ヒント: input_lines[0]に1行目の値が保存されている
    
    let res = [0, 0, 0, 0];
    let N = parseInt(ipt[0]);
    for (let i = 1; i < N + 1; i++) {
        let ary = ipt[i].split('');
        
        for (let j in ary){
            res[j] += parseInt(ary[j]);
        }
    }
    
    let ans = [];
    for (let i of res) {
        ans.push((i % 2 === 0) ? 0 : 1);
    }
    
    console.log(ans.join(''));
});