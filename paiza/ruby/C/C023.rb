# 自分の得意な言語で
# Let's チャレンジ！！

winning = gets.chomp.split(' ')
N = gets.chomp.to_i

N.times{|i|
    count = 0
    tar = gets.chomp.split(' ')
    
    winning.each{|j|
        tar.include?(j) ? count += 1 : count
    }
    
    p count
}