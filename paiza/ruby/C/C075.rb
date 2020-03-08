# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')

charged = input[0].to_i
N = input[1].to_i
points = 0

N.times{|i|
    fare = gets.chomp.to_i
    
    if points < fare
        charged -= fare
        points += (fare * 0.1)
    else 
        points -= fare
    end
    
   puts charged.to_s + ' ' + points.to_i.to_s
}