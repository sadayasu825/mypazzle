p 'ソートしたい数列を、半角スペースを空けて入力'
sequence = gets.chomp.split(' ').map(&:to_i)

(sequence.length - 2).downto(0) do |i|
    0.upto(i) do |j|
        if sequence[j] > sequence[j + 1]
            sequence[j], sequence[j + 1] = sequence[j + 1], sequence[j]
        end
    end
end

p sequence.join(' ')