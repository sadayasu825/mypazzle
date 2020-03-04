# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
N = input[0].to_i
M = input[1].to_i
cals = []

N.times{|i|
    cals.push(gets.chomp.to_i)
}


M.times{|j|
    ans = 0
    amt = gets.chomp.split(' ')
 
    N.times{|k|
        ans += (cals[k] * amt[k].to_i / 100.to_f).floor
    }

    puts ans
}
