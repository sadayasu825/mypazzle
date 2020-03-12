# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i
magic_circle = []
sum = 0
flag = false

N.times do |i|
    magic_circle << gets.chomp.split.map!(&:to_i)
end

magic_circle.each do |ary|
    if !ary.include?(0)
        sum = ary.sum
    else
        flag = (ary.count(0) == 2) ? true : false
    end
end

if sum == 0
    diagonal_l = 0
    diagonal_r = 0
    
    N.times do |j|
        diagonal_l += magic_circle[j][j]
        diagonal_r += magic_circle[j][N - j - 1]
    end
    
    sum = (diagonal_r > diagonal_l) ? diagonal_r : diagonal_l
end

if flag == true
    magic_circle_alt = Array.new(N).map{Array.new(N)}
    
    N.times do |i|
        N.times do |j|
            
            magic_circle_alt[i][j] = magic_circle[j][i]
            
        end
    end
    magic_circle = magic_circle_alt
end

magic_circle.each do |ary|
    if ary.include?(0)
        ary.map!{ |i|
            i = i == 0 ? sum - ary.sum : i
        }
    end
end

if flag == true
    magic_circle_alt2 = Array.new(N).map{Array.new(N)}
    N.times do |i|
        N.times do |j|
            magic_circle_alt2[i][j] = magic_circle[j][i]
        end
    end
    magic_circle = magic_circle_alt2
end
        
magic_circle.each do |ary|
    puts ary.join(' ')
end
    
