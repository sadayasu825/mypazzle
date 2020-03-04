# 自分の得意な言語で
# Let's チャレンジ！！

hate = gets.chomp
N = gets.chomp.to_i
flag = false

N.times do |i|
    room = gets.chomp
    if room.include?(hate)
        hate
    else 
        puts room
        flag = true
    end
end

if flag == false
    puts 'none'
end