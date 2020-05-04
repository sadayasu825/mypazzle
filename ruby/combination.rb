ary = ["a", "b", "c", "d"]

def nPr(input_array, r)
    if r > input_array.length
        return "unable calculation"
    end

    array = input_array.reverse

    stuck = []
    res = []

    array.each do |e|
        stuck << [e]
    end

    until stuck.empty?

        if stuck.last.length == r
            res << stuck.pop
        else
            tmp_array = stuck.pop
            
            array.each do |e|
                if !tmp_array.include?(e)
                    stuck << tmp_array + [e]
                end
            end
        end

    end

    return res
end

def nCr(input_array, r)
    return nPr(input_array, r).map!{|element| element.sort}.uniq
end


p nPr(ary, 2)
p nCr(ary, 2)
# p ary.combination(2).to_a
# p ary.permutation(2).to_a