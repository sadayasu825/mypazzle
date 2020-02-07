N = gets.chomp.to_i
point = 0

N.times do |i|
    ipt = gets.chomp.split(/[\/ ]/)

    dd = ipt[2]
    price = ipt[3].to_i

    if dd.include?('3')
        point += (price * 0.02).to_i
    elsif dd.include?('5')
        point += (price * 0.03).to_i
    elsif dd == '01'
        point += (price * 0.05).to_i
    else 
        point += (price * 0.01).to_i
    end
end

printf('%dポイント', point) 