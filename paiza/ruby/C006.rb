# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split
itm_points = gets.chomp.split
itm_num = ipt[0].to_i
peaple_num = ipt[1].to_i
top_num = ipt[2].to_i
sums = []

peaple_num.times do |i|
    itms = gets.chomp.split
    sum_point = 0
    itm_num.times do |j|
        sum_point += (itm_points[j].to_f * itms[j].to_f)
    end
    
    sums << sum_point.round
end

sums.sort!.reverse!

top_num.times do |i|
    puts sums[i]
end

    
