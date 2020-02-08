# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
xc = input[0].to_i
yc = input[1].to_i
r1 = input[2].to_i
r2 = input[3].to_i

N = gets.chomp.to_i

N.times{|i|
    ipt = gets.chomp.split(' ')
    x = ipt[0].to_i
    y = ipt[1].to_i
    
    formula = (x - xc)**2 + (y - yc)**2
    
    if formula >= r1**2 && formula <= r2**2
        puts 'yes'
    else
        puts 'no'
    end
}