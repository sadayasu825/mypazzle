# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
flowering_day = []
flowers = [0]

N.times do |i|
    ipt = gets.chomp.split(' ').map!(&:to_i)
    flowering_day << ipt.sum
end


1.upto(flowering_day.max) do |j|
    flowers[j] = flowering_day.count(j)
end


flowers.length.times do |k|
    if flowers[k] == flowers.max
        p k
        break
    end
end
    