# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split
num = ipt[0].to_i
size = ipt[1].to_i
page = ipt[2].to_i

ary = []
tmp = []

num.times do |i|
    tmp << i + 1
    
    if tmp.length == size
        ary << tmp
        tmp = []
    end
end
ary << tmp

puts ary[page - 1].empty? ? 'none' : ary[page - 1].join(' ')
    
