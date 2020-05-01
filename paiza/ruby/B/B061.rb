# 自分の得意な言語で
# Let's チャレンジ！！

border = gets.chomp.to_i
N = gets.chomp.to_i
product_values = []
combinations = []
res = []

N.times do |i|
    product_values << gets.chomp.to_i
end

1.upto(product_values.length) do |i|
    combinations += product_values.combination(i).to_a
end

combinations.each do |ary|
    
    if ary.sum < border || ary.select{|e| e != ary.min}.sum >= border
        next
    end
    
    res << ary
end

p res.map!{|ary| ary.sort}.uniq.length

