# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split('+')
res = 0

ipt.each do |i|
    
    i.length.times do |k|
        i[k] == '<' ? res += 10 : res += 1
    end 
    
end

p res