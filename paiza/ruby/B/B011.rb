# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
N = ipt[0]
tar = ipt[1]

hash = {}

i = 0
until (N * 2 * i) >= tar do 
    N * 2 * i
    i += 1
end

start = N * 2 * (i - 1) + 1

N.times do |j|
    hash[start + j] = start + N * 2 - 1 - j
end

p (tar < start + N) ? hash[tar] : hash.key(tar)
