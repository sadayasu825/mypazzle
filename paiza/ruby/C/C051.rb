# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')

P = input.permutation(4).to_a

stack = 0

P.each{|i|

    x_1 = (i[0] + i[1]).to_i
    x_2 = (i[2] + i[3]).to_i
    
    res = x_1 + x_2
    
    if res > stack
        stack = res
    end
}
p stack