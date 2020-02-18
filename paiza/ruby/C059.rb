# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i
cnt = Array.new(4, 0)

N.times do |i|
    ipt = gets.chomp.chars
    
    0.upto(3) do |j|
        ipt[j] == '0' ? cnt : cnt[j] += 1
    end
end

ans = []
cnt.each do |k|
    k.even? ? ans << 0 : ans << 1
end

puts ans.join('')
