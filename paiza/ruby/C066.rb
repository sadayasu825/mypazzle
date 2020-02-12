# 自分の得意な言語で
# Let's チャレンジ！！

input = gets.chomp.split(' ')
fish_n = input[0].to_i
poi_n = input[1].to_i
poi_hp = input[2].to_i
array = []
    
fish_n.times do |i|
    array << gets.chomp.to_i
end

using_poi_hp = poi_hp

until array.length == 0 || poi_n == 0
    
    using_poi_hp -= array[0]
    
    if using_poi_hp <= 0
        poi_n -= 1
        using_poi_hp = poi_hp
    else
        array.shift
    end
    
end

p fish_n - array.length