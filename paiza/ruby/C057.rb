# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split(' ')
N = ipt[0].to_i
x = ipt[1].to_i
y = ipt[2].to_i

max_x = x

N.times do |i|
    
    dxdy = gets.chomp.split(' ')
    dx = dxdy[0].to_i
    dy = dxdy[1].to_i
    
    x += dx
    
    x > max_x ? max_x = x : max_x
    
    y += dy
    
    y <= 0 ? break : next
end

p max_x
    