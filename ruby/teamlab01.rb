n = 1234567890
# arr = []
res = 0
# p n/2

1.upto(2000000) do |i|

    if n % i == 0
        res += i
        p res 
    end

end

p res