# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
N = ipt[0]
X = ipt[1]
fees = []

N.times do |i|
    params = gets.chomp.split.map!(&:to_i)
    x_0 = params[0]
    start = params[1]
    x_i = params[2]
    add = params[3]
    
    cnt = 0
    rest_x = X
    fee = start
    
    rest_x -= x_0
    
    if rest_x < 0
        fees << start
        next
    end
    
    cnt = (rest_x / x_i) + 1

    fees << (start + add * cnt)
end

max = fees.max
min = fees.min 

puts min.to_s + ' ' + max.to_s
