# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
str = gets.chomp.chars
arr = []

str.length.times do |i|
    if (i + 1).odd?
        arr << ((str[i].ord - 65 - N) % 26 + 65).chr
    elsif (i + 1).even?
        arr << ((str[i].ord - 65 + N) % 26 + 65).chr
    end
end
    
puts arr.join('')