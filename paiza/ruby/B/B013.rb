# 標準入力から値を取得してinput_lineに入れる

input = gets.chomp.split(' ').map!(&:to_i)
N = gets.chomp.to_i

a = input[0]
bc = input[1] + input[2]
train_times = []
hh = 0
mm = 0

N.times do |i|
    train_times << gets.chomp
end

train_times.reverse.each do |i|
    time = i.split.map!(&:to_i)
    hh = time[0]
    mm = time[1]
    hh2 = hh
    
    mm2 = (mm + bc) % 60
    hh2 += (mm + bc) / 60
    
    if hh2 < 9
        break
    end
end

mm3 = (hh * 60 + mm - a) % 60
hh3 = (hh * 60 + mm - a) / 60

puts hh3.to_s.rjust(2, '0') + ':' + mm3.to_s.rjust(2, '0')
