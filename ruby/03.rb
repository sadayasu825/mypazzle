res = 0

1.upto(40000) do |i|

    if i % 3 == 0 || i.to_s.include?('3')
        res += i
    end
end

p res 