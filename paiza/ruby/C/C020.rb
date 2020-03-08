# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
g = input[0].to_f
rate1 = input[1].to_f
rate2 = input[2].to_f

g -= g * (rate1 / 100.to_f)
g -= g * (rate2 / 100.to_f)

p g