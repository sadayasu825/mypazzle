# 標準入力から値を取得してinput_lineに入れる

ipt = gets.chomp.split.map!(&:to_i)
candidate_n = ipt[0]
peaple_n = ipt[1]
N = ipt[2]

saporter = {}

candidate_n.times do |i|
    saporter[i + 1] = 0
end

saporter['free'] = peaple_n

N.times do |i|
    cnt = 0
    speaker = gets.chomp.to_i
    
    saporter.each do |j|
        if j[0] != speaker && j[1] != 0
            saporter[j[0]] -= 1
            cnt += 1
        end
    end
    
    saporter[speaker] += cnt
    
end

saporter.delete('free')

max_sapo = saporter.max{|a, b| a[1] <=> b[1]}
top_candidates = saporter.filter{|k, v| v == max_sapo[1]}

top_candidates.each do |i|
    puts i[0]
end
