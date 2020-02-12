# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split(' ')
a = ipt[0].to_i
b = ipt[1].to_i
R = ipt[2].to_i

N = gets.chomp.to_i

N.times do |i|
    coodinate = gets.chomp.split(' ')
    x = coodinate[0].to_i
    y = coodinate[1].to_i
    
    if ((x - a)**2 + (y - b)**2) >= R**2
        puts 'silent'
    else
        puts 'noisy'
    end
end