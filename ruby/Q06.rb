def function(i, initial)
    if i == initial
        nums.push(initial)
    elsif i.even? && i != initial
        i = i.div(2)
        function(i, initial)
    elsif i != 1 && i.odd?
        i = i * 3 + 1
        function(i, initial)
    end
end

nums = []
(2..10000).each{|i|
    if i.even?
        initial = i
        i = i * 3 + 1
        function(i, initial)
    end
}
puts nums