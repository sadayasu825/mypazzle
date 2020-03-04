# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
array = [1]
count = 0

N.times{|i|
    array.push(gets.chomp.to_i)
    count += (array[i] - array[i + 1]).abs
}
p count
