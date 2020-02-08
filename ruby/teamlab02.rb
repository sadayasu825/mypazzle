arr = [1, 0, 5]

3.upto(31) do |i|

    arr[i] = arr[i - 3] + arr[i - 2] + arr[i - 1]
    p arr[i]
end

p arr[30]