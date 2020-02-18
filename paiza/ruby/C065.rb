# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i
divisors = []
maxs = [101]
mins = [0]

N.times do |i|
    hint = gets.chomp.split
    
    case hint[0]
    when '/' then
        divisors << hint[1].to_i
    when '<' then
        maxs << hint[1].to_i
    when '>' then
        mins << hint[1].to_i
    end
end

if !divisors.empty? && !mins.empty?
    minimum = divisors.max > mins.max ? (divisors.max - 1) : mins.max
elsif divisors.empty?
    minimum = mins.max
elsif mins.empty?
    minimum = divisors.max - 1
end


(minimum + 1).upto(maxs.min - 1) do |i|
    cnt = 0
    divisors.each do |j|
        (i % j) == 0 ? cnt += 1 : break
    end
    
    if cnt == divisors.length
        p i
        break
    end
end
