# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
price = input[0].to_i
rate = input[1].to_i
sum = 0

while price != 0
    sum += price
    price = (price * ((100 - rate).to_f / 100.to_f)).floor
end

p sum