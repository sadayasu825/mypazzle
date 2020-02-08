# ASCII code
# 「0..9」 48 ~ 57 (10 numbers)
# 「A..Z」 65 ~ 90 (26 numbers)
# 「a..z」 97 ~ 122 (26 numbers)


p 'input a string (numbers and uppercase and lowercase alphabets only)...'
str = gets.chomp.chars
p 'input shift number...'
shift = gets.chomp.to_i

res = []

str.length.times do |i|
    
    if str[i].match(/[0-9]/)
        res << ((str[i].ord - 48 + shift) % 10 + 48).chr
    elsif str[i].match(/[A-Z]/)
        res << ((str[i].ord - 65 + shift) % 26 + 65).chr
    elsif str[i].match(/[a-z]/)
        res << ((str[i].ord - 97 + shift) % 26 + 97).chr
    end

end

puts res.join('')
        