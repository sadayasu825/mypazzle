ary = [1, 2, 3, '4', 5, '6', 7]

# if !ary.select{|x| x > 5}.empty?
#    p true
# else 
#    p false
# end

p ary.select{|x| x == x.to_s}