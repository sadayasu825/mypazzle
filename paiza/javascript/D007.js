process.stdin.resume();
process.stdin.setEncoding('utf8');

var input_lines = []; // 標準入力から与えられた各行を保存する変数：input_lines
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  input_lines.push(line);
});
reader.on('close', () => {
    var ans = '';
    var x = parseInt(input_lines, 10);
    for(var i = 0; i < input_lines; i++){
        ans += '*';
    }
    console.log(ans)
});