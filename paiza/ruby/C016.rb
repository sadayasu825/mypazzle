# you wlii have a string, like 'ABCDE'.
# if the string has Leet charactors, you must translate them.


leet_hash = {
    'A' => '4',
    'E' => '3',
    'G' => '6',
    'I' => '1',
    'O' => '0',
    'S' => '5',
    'Z' => '2'
}

input = gets.chomp
ans = ''

0.upto(input.length - 1){|i|
    str = input.slice(i)
    leet_str = leet_hash[str]
    if leet_hash[str].nil?
        ans += str
    else 
        ans += leet_str
    end
    
}
puts ans
