# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i

N.times{|i|
    c = gets.chomp
    
    array = c.split('').uniq
    if array.length == 1
         puts 'Four Card'
    elsif array.length == 2 && c.slice(1) == c.slice(2)
        puts 'Three Card'
    elsif array.length == 2 && c.slice(1) != c.slice(2)
        puts 'Two Pair'
    elsif array.length == 3
        puts 'One Pair'
    else
        puts 'No Pair'
    end
}
