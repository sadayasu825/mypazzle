# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
N = input[0].to_i
org = input[1]
tgt = input[2]
cnt = 0

while org != tgt
    tgt = tgt[1, N-1] + tgt[0]
    cnt += 1
end

p cnt