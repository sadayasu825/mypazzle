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
    const N = parseInt(ipt[0]);
    let start = [];
    let end = [];
    let high = [];
    let low = [];

    for (let i = 1; i < N + 1; i++) {
       
        let ary = ipt[i].split(' ');
       
        start.push(parseInt(ary[0]));
        end.push(parseInt(ary[1]));
        high.push(parseInt(ary[2]));
        low.push(parseInt(ary[3]));
    }
    
    let ans = [];
    ans.push(start[0], end[N - 1], Math.max(...high), Math.min(...low));
    ans = ans.join(' ');
    console.log(ans);
});