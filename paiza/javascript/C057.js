process.stdin.resume();
process.stdin.setEncoding('utf8');
// 自分の得意な言語で
// Let's チャレンジ！！

var lines = [];
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  lines.push(line);
});
reader.on('close', () => {
    
    let ipt = lines[0].split(' ');

    let N = parseInt(ipt[0]);
    let x = parseInt(ipt[1]);
    let y = parseInt(ipt[2]);
    
    let max_x = x;
    
    for(let i = 1; i <= N; i++){
        let dxdy = lines[i].split(' ');
        
        let dx = parseInt(dxdy[0]);
        let dy = parseInt(dxdy[1]);
        
        x += dx;
        if(x > max_x){
            max_x = x;
        }
        
        y += dy;
        if(y <= 0){
            break;
        }
    }
    
    console.log(max_x);
});