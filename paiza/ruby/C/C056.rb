# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp

array = input.split(' ')
number = array[0].to_i
border = array[1].to_i

number.times{|i|

    data = gets.chomp.split(' ')
    point = data[0].to_i
    absence = data[1].to_i
    
    grade = point - absence * 5
    
    if grade >= border
        p i + 1
    end
}