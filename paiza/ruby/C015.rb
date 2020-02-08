# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
pnt = 0

N.times{|i|
    input = gets.chomp.split(' ')
    day = input[0]
    cash = input[1].to_i
    
    if day.include?('3')
        pnt += (cash*0.03).floor
    elsif day.include?('5')
        pnt += (cash*0.05).floor
    else
        pnt += (cash*0.01).floor
    end
}

p pnt

