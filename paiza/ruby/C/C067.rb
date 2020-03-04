# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp

N = (input.split(' '))[0].to_i
dec = (input.split(' '))[1].to_i

bin = dec.to_s(2)

N.times{|i|
    m = gets.chomp.to_i
    puts bin.reverse.slice(m-1)
}