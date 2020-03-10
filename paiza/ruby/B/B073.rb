# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
tree_n = ipt[0]
border = ipt[1]

lights = gets.chomp.split.map!(&:to_i)
N = gets.chomp.to_i

N.times do |i|
    section = gets.chomp.split.map!(&:to_i)
    section1 = section[0]
    section2 = section[1]
    section_lights = 0
    
    (section1 - 1).upto(section2 - 1) do |j|
        section_lights += lights[j]
    end
    
    average = section_lights.to_f / (section2 - section1 + 1).to_f

    if average < border
        (section1 - 1).upto(section2 - 1) do |j|
            lights[j] += (border - average.floor)
        end
    end
end

puts lights.join(' ')
