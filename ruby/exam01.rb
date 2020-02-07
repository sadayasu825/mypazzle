input = gets.chomp.split(' ')

hit = input[0].to_f
wit = input[1].to_f

hit /= 100.to_f

bmi = (wit / (hit**2)).round(1)
bmi_s = bmi.to_s
printf('BMI: %s', bmi_s)
puts ('')

if bmi < 18.5 
    puts '判定: 低体重'
elsif bmi >= 18.5 && bmi < 25
    puts '判定: 普通体重'
elsif bmi >= 25 && bmi < 30
    puts '判定: 肥満（１度）'
elsif bmi >= 30 && bmi < 35
    puts '判定: 肥満（２度）'
elsif bmi >= 35 && bmi < 40
    puts '判定: 肥満（３度）'
elsif bmi >= 40
    puts '判定: 肥満（４度）'
end


