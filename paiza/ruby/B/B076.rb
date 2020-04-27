# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split.map!(&:to_i)

N = ipt[0]
Q = ipt[1]

bread_n = {}
bread_price = {}

N.times do |i|
    bread_params = gets.chomp.split.map!(&:to_i)
    
    bread_price[i] = bread_params[0]
    bread_n[i] = bread_params[1]
end

Q.times do |i|
    query = gets.chomp.split
    flag = true
    sum = 0
    p_n = []
    
    if query[0] == "buy"
        N.times do |j|
            purchase_n = query[j + 1].to_i
            
            if bread_n[j] < purchase_n
                flag = false
                break
            end
            
            p_n << purchase_n
        end
        
        if flag == false
            p -1
            next
        end
        
        N.times do |k|
            bread_n[k] -= p_n[k]
            sum += bread_price[k] * p_n[k]
        end
        
        p sum
        
    else
        N.times do |j|
            bread_n[j] += query[j + 1].to_i
        end
    end
    
end