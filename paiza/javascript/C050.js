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
    let price = parseInt(input[0]);
    const max_A = parseInt(input[1]);
    const max_B = parseInt(input[2]);
    const step_A = 10;
    const step_B = 1000;
    let next_price = 0;
    
    while (true) {
        next_price = price + step_A;
        if (next_price > max_A) {
            console.log("B " + price);
            break;
        }
        
        price = next_price;
        next_price = price + step_B;
        if (next_price > max_B) {
            console.log("A " + price);
            break;
        }
        
        price = next_price;
    }
});