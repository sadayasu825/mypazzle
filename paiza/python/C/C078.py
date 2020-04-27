# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

ipt = list(map(int, input().split()))

N = ipt[0]
c_1 = ipt[1]
c_2 = ipt[2]

stock_n = 0
stock_price = 0
profit = 0

for i in range(N):
    stock_price = int(input())
     
    if stock_price <= c_1:
        stock_n += 1
        profit -= stock_price
    elif stock_price >= c_2:
        profit += stock_price * stock_n
        stock_n = 0

print(profit + stock_price * stock_n)
