# 自分の得意な言語で
# Let's チャレンジ！！

arr_length = gets.chomp.to_i
arr = gets.chomp.split(' ')
sum = 0
flag = false

if arr.include?('x10')
    arr.delete('x10')
    flag = true
end

arr.map!(&:to_i) 
arr.sort!

arr[0] == 0 ? arr.delete(arr.last) : arr

flag == true ? sum = arr.sum * 10 : sum = arr.sum

p sum


