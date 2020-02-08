# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp
a = input.split(' ')
i = 0
ans = 0
# p a[0] + a[1] + a[2]

if a[4] == 'x'
    p ans = eval(a[0] + a[1] + a[2])
elsif a[0] == 'x'
    0.upto(10){|i|
        ans = eval(i.to_s + a[1] + a[2])
        if ans == a[4].to_i
            p i
        end
    }
elsif a[2] == 'x'
    0.upto(10){|i|
        ans = eval(a[0] + a[1] + i.to_s)
        if ans == a[4].to_i
            p i
        end
    }
end
    
    