# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i

array = [0, 0, 0, 0]

N.times do |i|
    ipt = gets.chomp.split(' ')
    array[ipt[0].to_i] += ipt[1].to_i
end

array2 = []

array.each do |k|
    array2 << k / 100
end


p array2[0] * 5 + array2[1] * 3 + array2[2] * 2 + array2[3] * 1

    