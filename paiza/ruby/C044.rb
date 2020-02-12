# 自分の得意な言語で
# Let's チャレンジ！！


def judge(array)
    if array.include?('rock') && array.include?('scissors')
        'rock'
    elsif array.include?('scissors') && array.include?('paper')
        'scissors'
    else
        'paper'
    end
end

N = gets.chomp.to_i
arr = []

N.times do |i|
    hand = gets.chomp
    
    if !arr.include?(hand)
        arr << hand
    end
end

if arr.length == 2
    puts judge(arr)
else
    puts 'draw'
end