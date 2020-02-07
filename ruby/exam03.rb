email = gets.chomp

array = email.split('@')
beforea = array[0]
aftera = array[1]

count = 0

email[0].match(/[a-zA-Z]/) ? count += 1 : count
email[email.length - 1].match(/[a-zA-Z]/) ? count += 1 : count
aftera[0].match(/[a-zA-Z]/) ? count += 1 : count
beforea[beforea.length - 1].match(/[a-zA-Z]/) ? count += 1 : count
beforea =~ /\A[a-zA-Z0-9.-]+\Z/ ? count += 1 : count
aftera =~ /\A(?=.*[a-zA-Z.])[a-zA-Z.]+\Z/ ? count += 1 : count



if count == 6
    p '適切なメールアドレスです'
else
    p '不適切なメールアドレスです'
end