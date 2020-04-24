# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split.map!(&:to_i)

N = ipt[0]
q_n = ipt[1]

point = 100 / q_n

N.times do |i|
    student_params = gets.chomp.split.map!(&:to_i)
    submission_date = student_params[0]
    correct_answers = student_params[1]
    
    if submission_date <= 0
        score = point * correct_answers
    elsif submission_date > 0 && submission_date <= 9
        score = (point * correct_answers * 0.8).floor
    else
        score = 0
    end
    
    if score >= 80
        puts 'A'
    elsif score >= 70
        puts 'B'
    elsif score >= 60
        puts 'C'
    else
        puts 'D'
    end
end