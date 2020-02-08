# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i

N.times{|i|

    input = gets.chomp.to_i
    array = []
    
    1.upto(input/2){|j|
        if input % j == 0
            array.push(j)
        end
     }
     
    res = array.sum
    
    if res == input
        puts 'perfect'
    elsif res == input - 1
        puts 'nearly'
    else 
        puts 'neither'
    end
     
}

