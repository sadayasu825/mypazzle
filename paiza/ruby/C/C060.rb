# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split(' ')
words = ipt[0]
number = ipt[1].to_i
page = ipt[2].to_i



arr = gets.chomp.split(' ').sort!

(number * (page-1)).upto(number * page - 1){|i|
    puts arr[i]
} 