# 自分の得意な言語で
# Let's チャレンジ！！

max = gets.chomp.to_i
N = gets.chomp.to_i

hash = {}

N.times do |i|
    ipt = gets.chomp.split(' ')
    
    if hash[ipt[0]].nil?
        hash[ipt[0]] = ipt[2].to_i
    else
        hash[ipt[0]] += ipt[2].to_i
    end
end

cnt = 0
hash.each do |j|
    if j[1] % max == 0
        cnt += (j[1] / max)
    else
        cnt += (j[1] / max + 1)
    end
end

p cnt

