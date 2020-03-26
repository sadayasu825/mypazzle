# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
N = ipt[0]
K = ipt[1]

pixels = []
new_pixels = Array.new(N / K).map{Array.new(N / K, 0)}


N.times do |k|
    pixels << gets.chomp.split.map!(&:to_i)
end

l = 0
ary = []
until K * l >= N do 
    ary << K * l
    l += 1
end

ary.each do |e|
    i_0 = e
    ary.each do |f|
        j_0 = f
        
        sum = 0
        
        i_0.upto(i_0 + K - 1) do |i|
            j_0.upto(j_0 + K - 1) do |j|
                sum += pixels[i][j]
            end
        end
        
        ave = (sum / (K * K)).floor
        
        new_pixels[i_0 / K][j_0 / K] = ave
    end
end

new_pixels.map{|ary|
    puts ary.join(' ')
}

