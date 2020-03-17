params = gets.chomp.split.map!(&:to_i)
bush_n = params[0]
rabbit_n = params[1]
N = params[2]

hash = {}

bush_n.times do |i|
    hash[i + 1] = 0
end

rabbit_n.times do |i|
    start = gets.chomp.to_i
    hash[start] = i + 1
end

hash_length = hash.length

N.times do |i|
    rabbit_n.times do |j|
        
        flag = false
        from = 0
        to = 0
        
        hash.map{|a, b|
            if b == j + 1
                from = a
                flag = true
            elsif b == 0 && flag == true
                to = a
                break
            end
        }
        
        if to == 0
            hash.map{|a, b|
                if b == 0
                    to = a
                    break
                end
            }
        end
        
        hash[from], hash[to] = hash[to], hash[from]
        
    end
end

rabbit_n.times do |i|
    hash.map{|a, b|
        if b == i + 1
            puts a
            break
        end
    }
end

