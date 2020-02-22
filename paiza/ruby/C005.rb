# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i

N.times do |i|
    ip_ad = gets.chomp
    ary = ip_ad.split('.').map!(&:to_i)
    
    if !ary.select{|x| x > 255}.empty?
        puts 'False'
        next
    end
    
    puts ip_ad.match(/\A[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\Z/) ? 'True' : 'False'
    
end
