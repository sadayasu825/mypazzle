# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
N = input[0].to_i
M = input[1].to_i
L = input[2].to_i
str = ''

N.times{|i|
    str += gets.chomp
}

K = (N * M) % L
J = (N * M) / L

if K == 0
    J.times{|i|
        puts str[L * i, L]
    }
elsif K != 0
    (J + 1).times{|i|
        puts str[L * i, L]
    }
end