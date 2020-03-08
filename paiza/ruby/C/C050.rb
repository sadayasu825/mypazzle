# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split(' ')
price = ipt[0].to_i
a_max = ipt[1].to_i
b_max = ipt[2].to_i

while true do
 
    if (price + 10) > a_max
        printf('B %d', price)
        break
    else
        price += 10
    end
    
    if (price + 1000) > b_max
        printf('A %d', price)
        break
    else
        price += 1000
    end
end
    
    