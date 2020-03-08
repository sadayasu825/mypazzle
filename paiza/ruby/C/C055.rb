# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
target = gets.chomp

stack = []

N.times{|i|
    input = gets.chomp
    
    
    puts input.match(/.*#{target}.*/)

    
}
