arr = [1]
res = 0
n = 2
cnt = 0
# arr = [1, 2, 3]
# p res += 1.to_f / arr[0].to_f
# arr.each do |i|
#     res += 1.to_f / arr[i].to_f
# end

# p res
# while res <= 10
    
#     arr.each do |i|

#         res += 1.to_f / i.to_f
#         # p res
#     end
#     arr.push(n)
#     n += 1
#     cnt += 1
# end

# p cnt
ans = 0

100000000.times do |i|
    res = 0
    1.upto(i + 1) do |j|
        res += 1.to_f / j.to_f
    end

    if res >=10
        ans = i
        break
    end
end

p ans
