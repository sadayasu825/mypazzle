# 自分の得意な言語で
# Let's チャレンジ！！

flag = false

status = gets.chomp.split(' ')
atk = status[0].to_i
dfc = status[1].to_i
agi = status[2].to_i

mons = gets.chomp.to_i

mons.times do |i|
    ipt = gets.chomp.split(' ')
    
    name = ipt[0]
    min_atk = ipt[1].to_i
    max_atk = ipt[2].to_i
    min_dfc = ipt[3].to_i
    max_dfc = ipt[4].to_i
    min_agi = ipt[5].to_i
    max_agi = ipt[6].to_i
    
    cnt = 0
    
    (atk >= min_atk && atk <= max_atk) ? cnt += 1 : cnt
    (dfc >= min_dfc && dfc <= max_dfc) ? cnt += 1 : cnt
    (agi >= min_agi && agi <= max_agi) ? cnt += 1 : cnt
    
    if cnt == 3
        puts name
        flag = true
    end
    
end

if flag == false
    puts 'no evolution'
end

