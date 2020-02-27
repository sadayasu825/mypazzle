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
    var ans = (ipt[0] / 180) + 2
  console.log(ans);
});