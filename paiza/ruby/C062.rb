# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
cnt = 0
bind = 0

N.times do |i|
    food = gets.chomp
    
    if bind == 0 && food == 'melon'
        cnt += 1
        bind = 10
    elsif bind != 0
        bind -= 1
    end
end

p cnt