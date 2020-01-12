def cutbar(length, peaple)
    num = 1
    count = 0
    while num < length 
        if num <= peaple
            num = num * 2
            count += 1
        elsif num > peaple
            num = num + peaple
            count += 1
        end
    end
    count
end

puts(cutbar(20, 3).to_s + '回')
puts(cutbar(100, 5).to_s + '回')