# 標準入力から値を取得してinput_lineに入れる

def sort(array, i, j, max_j)
    if array[i][j] < array[i + 1][j]
        array[i], array[i + 1] = array[i + 1], array[i]
    elsif array[i][j] == array[i + 1][j] && j != max_j
        sort(array, i, j + 1, max_j)
    end
end

N = gets.chomp.to_i
arr = []

N.times do |i|
    arr << gets.split(' ').map(&:to_i)
end

(arr.length - 2).downto(0) do |i|
    0.upto(i) do |j|
        sort(arr, j, 0, 2)
    end
end

arr.each do |i|
    puts i.join(' ')
end
    
