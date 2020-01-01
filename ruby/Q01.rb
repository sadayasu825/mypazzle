num = 10

while true
    bin = num.to_s(2)
    oct = num.to_s(8)
    dec = num.to_s
    
    re_bin = bin.reverse
    re_oct = oct.reverse
    re_dec = dec.reverse
    
    if dec == re_dec && bin == re_bin && oct == re_oct
        puts(num)
        break
    end

    num += 1
end