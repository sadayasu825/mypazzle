# 自分の得意な言語で
# Let's チャレンジ！！

n = gets.chomp.to_i
x = [0, 0, 0]

n.times{|i|
   
    str = gets.chomp
    array = str.split(' ')
    
    if array[0] == 'SET'
        x[array[1].to_i] = array[2]
    elsif array[0] == 'ADD'
        x[2] = x[1].to_i + array[1].to_i
    else
        x[2] = x[1].to_i - array[1].to_i
    end
}

puts x[1].to_s + ' ' + x[2].to_s
