# 標準入力から値を取得してinput_lineに入れる

input = gets.chomp.split
N = input[0].to_i
M = input[1].to_i
mul_ary = []
mul_ary2 = []

N.times do |i|
    dish = gets.chomp.to_i
    rest = M % dish
   
    mul_ary << [i + 1, dish, rest]
end

rests_min = (mul_ary.min{|a, b| a[2] <=> b[2]})[2]

mul_ary.each do |i|
    if i[2] == rests_min
        mul_ary2 << i
    end
end

dish_max = (mul_ary2.max{|a, b| a[1] <=> b[1]})[1]

mul_ary2.each do |i|
    if i[1] == dish_max
        p i[0]
    end
end

