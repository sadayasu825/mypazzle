# 自分の得意な言語で
# Let's チャレンジ！！

prt = gets.chomp.split(' ').map!(&:to_i)
N = gets.chomp.to_i

N.times{|i|
    cld = gets.chomp.split(' ').map!(&:to_i)
    
    if prt[0] > cld[0]
        puts 'High'
    elsif prt[0] < cld[0]
        puts 'Low'
    elsif prt[0] == cld[0] && prt[1] > cld[1]
        puts 'Low'
    else
        puts 'High'
    end
}