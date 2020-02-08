# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
score = 0

def marker(str1, str2)
    ary1 = str1.split('')
    ary2 = str2.split('')
    count = 0
    
    str1.length.times{|j|
        if ary1[j] != ary2[j]
            count += 1
        end
    }
    
    if count == 1
        1
    else 
        0
    end
end

N.times{|i|
    input = gets.chomp.split(' ')
    right = input[0]
    ans = input[1]
    
    if ans == right
        score += 2
    elsif ans.length == right.length
        score += marker(right, ans)
    end
}

p score

