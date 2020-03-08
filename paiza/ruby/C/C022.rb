# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
open = []
close = []
high = []
low = []

N.times{|i|
    ipt = gets.chomp.split(' ')
    open.push(ipt[0])
    close.push(ipt[1])
    high.push(ipt[2])
    low.push(ipt[3])
}


high.sort_by!{|x| x.to_i}
low.sort_by!{|x| x.to_i}
ans = []
ans.push(open[0], close[N-1], high[N-1], low[0])
puts ans.join(' ')


