# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
N = input[0].to_i
criterion = input[1].to_i
allowable_error = input[2].to_i

hash = {}

N.times do |i|
    
    ipt = gets.chomp.split(' ')
    weight = ipt[0].to_i
    sugar = ipt[1].to_i
    
    if sugar >= (criterion - allowable_error) && sugar <= (criterion + allowable_error)
        hash[i+1] = weight
    end
end

if hash.empty?
    puts 'not found'
else
    res = hash.max{|a, b| a[1] <=> b[1]}
    p res[0]
end
    