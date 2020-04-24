# 自分の得意な言語で
# Let's チャレンジ！！

ipt = gets.chomp.split.map!(&:to_i)

N = ipt[0]
c_1 = ipt[1]
c_2 = ipt[2]

stock_n = 0
profit = 0
stock_price = 0

N.times do |i|
    stock_price = gets.chomp.to_i
    
    if stock_price <= c_1
        stock_n += 1
        profit -= stock_price
    elsif stock_price >= c_2
        profit += stock_price * stock_n
        stock_n = 0
    end
end

p (profit + stock_price * stock_n)
        

