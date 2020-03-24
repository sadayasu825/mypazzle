# 標準入力から値を取得してinput_lineに入れる

columns = gets.chomp.to_i
ary = []
stack = Array.new(columns).map{Array.new()}
str_len = []

ary << gets.chomp.split

data = gets.chomp.to_i
data.times do |i|
    ary << gets.chomp.split
end

ary.map{|a|
    columns.times do |i|
        stack[i] << a[i]
    end
}

stack.map{|a|
    len = 0
    
    a.each do |b|
        len = (b.length > len) ? b.length : len
    end
    
    str_len << len + 1
}

stuck2 = []
tmp = []

str_len.length.times do |i|
    tmp << '| ' + ary.first[i].ljust(str_len[i], ' ')
end

stuck2 << tmp.join('') + '|'
tmp = []

str_len.length.times do |i|
    tmp << '|-' + '-'.ljust(str_len[i], '-')
end

stuck2 << tmp.join('') + '|'
tmp = []

1.upto(data) do |i|
    str_len.length.times do |j|
        tmp << '| ' + ary[i][j].ljust(str_len[j], ' ')
    end
    
    stuck2 << tmp.join('') + '|'
    tmp = []
end


stuck2.each do |i|
    puts i
end
