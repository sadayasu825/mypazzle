# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
count = 0

N.times{|i|
    a = gets.chomp.split(' ')

    if a.shift == 's'
        if a[1].to_i + a[2].to_i >= 160 && a.map!(&:to_i).sum >= 350
            count += 1
        end
    else 
        if a[3].to_i + a[4].to_i >= 160 && a.map!(&:to_i).sum >= 350
            count += 1
        end
    end
}

p count
