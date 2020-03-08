# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
btm_max = input[0].to_i
hgt_max = input[1].to_i
cnt = 0

1.upto(btm_max - 1) do |i|
    1.upto(hgt_max - 1) do |j|
        
        hypotenuse = Math.sqrt(i**2 + j**2)
        hypotenuse % 1 == 0 ? cnt += 1 : cnt
        
    end
end

p cnt