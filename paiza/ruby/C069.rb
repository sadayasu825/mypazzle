# 自分の得意な言語で
# Let's チャレンジ！！
cnt = 0
b = 0


input = gets.chomp.split(' ')
this_YY = input[0].to_i
this_MM = input[1].to_i
this_DD = input[2].to_i

fes = gets.chomp.split(' ')
fes_MM = fes[0].to_i
fes_DD = fes[1].to_i

this_MM.even? ? a = 15 - this_DD : a = 13 - this_DD

fes_YY = this_YY

while (fes_YY % 4) != 1
    fes_YY += 1
end

i = this_YY

while (i + 1) != fes_YY
    b += 181
    i += 1
end

c = 0

(this_MM + 1).upto(13) do |j|
    j.even? ? c += 15 : c += 13
end

d = 0

1.upto(fes_MM - 1) do |k|
    k.even? ? d += 15 : d += 13
end

p a + b + c + d + fes_DD

