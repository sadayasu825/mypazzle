# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i
hash = {}
N.times do |i|
    time_difference = gets.chomp.split(' ')
    hash[time_difference[0]] = time_difference[1].to_i
end

input = gets.chomp.split(/[ :]/)
place = input[0]
hh = input[1].to_i
mm = input[2]
base = hash[place]

hash.values.each do |j|
    local_hh = (hh + (j - base)) % 24
    local_hh = "%02d" % local_hh
    puts local_hh.to_s + ':' + mm
end