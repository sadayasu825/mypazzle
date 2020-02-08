# 自分の得意な言語で
# Let's チャレンジ！！

num = gets.chomp.split(' ')
ans = ''

num = num.sort_by{|x| x.to_i}

if num[0].length < num[1].length
    num[0] = num[0].rjust(num[1].length, '0')
end

num[1].length.times{|i|
    res = (num[0][i].to_i + num[1][i].to_i).to_s
    ans += res[res.length - 1]
}

puts ans