# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split(' ')
N = ipt[0].to_i
r = ipt[1].to_i

N.times do |i|
    params = gets.chomp.split(' ')
  
    params.sort_by!{|x| x.to_i}
  
    if (r * 2) <= params[0].to_i
        p i + 1
    end
end