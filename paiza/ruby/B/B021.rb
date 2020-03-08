# 標準入力から値を取得してinput_lineに入れる
N = gets.chomp.to_i
# 取得した値を標準出力するために"XXXXXX"をどう書き換える？

N.times do |i|
    word = gets.chomp

    if /.*s\Z|.*sh\Z|.*ch\Z|.*o\Z|.*x\Z/ =~ word
        puts word + 'es'
    elsif /.*f\Z|.*fe\Z/ =~ word
        word.sub!(/f\Z|fe\Z/, '')
        puts word + 'ves'
    elsif /.*[^aiueo]y\Z/ =~ word
        word.sub!(/y\Z/, '')
        puts word + 'ies'
    else 
        puts word + 's'
    end
end