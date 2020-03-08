# 標準入力から値を取得してinput_lineに入れる

N = gets.chomp.to_i
recipe = {}
N.times do |i|
    ipt = gets.chomp.split
    recipe[ipt[0]] = ipt[1].to_i
end

M = gets.chomp.to_i
ingredient = {}
M.times do |j|
    ipt = gets.chomp.split
    ingredient[ipt[0]] = ipt[1].to_i
end

cnt = []
recipe.each do |i|
    if ingredient.include?(i[0])
        cnt << ingredient[i[0]] / recipe[i[0]]
    end
end

p cnt.empty? ? 0 : cnt.min
