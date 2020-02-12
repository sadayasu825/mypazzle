# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
hash = {'min': nil , 'max': nil}

N.times do |i|
    ipt = gets.chomp.split(' ')
    res = ipt[0]
    height = ipt[1].to_f
    
    case res
    when 'le' then
        if hash[:max].nil? || height <= hash[:max]
            hash[:max] = height
        end
    when 'ge' then
        if hash[:min].nil? || height > hash[:min]
            hash[:min] = height
        end
    end

end

puts hash[:min].to_s + ' ' + hash[:max].to_s
        