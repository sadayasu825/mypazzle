arr = []
cnt = 0
0.upto(30) do |i|
    0.upto(40) do |j|
        0.upto(10) do |k|

            res = 205 * i + 82 * j + 30 * k
            res = res.to_s

            arr.include?(res) ? arr : arr.push(res)
            
        end
    end
end

p arr.length