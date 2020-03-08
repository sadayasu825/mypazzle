1.upto(150) do |i|
    str = i.to_s
    puts (i % 3 == 0 || str.include?('3')) ? str + '!' : str
end
