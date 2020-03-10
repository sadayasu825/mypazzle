# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
N = ipt[0]
M = ipt[1]
ary = []


2.times do |i|
    input = gets.chomp.split.map!(&:to_i)
    ary << [input[0], input[1]]
end

2.upto(N - 1) do |i|
    insert = []
    
    insert << ary[i - 1][0] + (ary[i - 1][0] - ary[i - 2][0])
    insert << ary[i - 1][1] + (ary[i - 1][1] - ary[i - 2][1])
    
    ary << insert
end

ary.each do |x|
    2.upto(M - 1) do |j|
        x[j] = x[j - 1] + (x[1] - x[0])
    end
end

ary.each do |y|
    puts y.join(' ')
end

