str = ''
str2 = ''
email = ''

until email.length == 255
    str2 += 'a'
    email = str2 + '@example.com'
end

str = 'あ' * 100
num = '1' * 3000


# puts email
# puts str
puts num
