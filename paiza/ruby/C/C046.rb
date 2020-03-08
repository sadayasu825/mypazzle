# 自分の得意な言語で
# Let's チャレンジ！！

n = gets.chomp.to_i
member = gets.chomp.split(' ')
N = gets.chomp.to_i
hash = {}

n.times do |i|
    hash[member[i]] = 0
end

N.times do |j|
    ipt = gets.chomp.split(' ')
    hash[ipt[0]] += ipt[1].to_i
end

n.times do |k|
    
    arr = hash.max{|a, b| a[1] <=> b[1]}
    puts arr[0]
    hash.delete(arr[0])
end
