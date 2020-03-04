# 標準入力から値を取得してinput_lineに入れる

day = gets.chomp.split(' ')
holiday = day[0].to_i
plan = day[1].to_i
hash = {}
hash2 = {}

holiday.times do |i|
    ipt = gets.chomp.split(' ')
    hash[ipt[0].to_i] = ipt[1].to_i
end

first = hash.keys.first
last = hash.keys.last

first.upto(last - plan + 1) do |i|
    sum = 0
    i.upto(i + plan - 1) do |j|
        sum += hash[j]
    end
    hash2[i] = sum.to_f / plan.to_f
end

ave = 100
res = 0

hash2.each do |k|
    if k[1] < ave
        res = k[0]
        ave = k[1]
    end
end

puts res.to_s + ' ' + (res + plan - 1).to_s
