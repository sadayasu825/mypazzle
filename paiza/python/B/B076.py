# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

ipt = list(map(int, input().split()))

bread_kinds = ipt[0]
query_n = ipt[1]

bread_prices = {}
bread_n = {}

for i in range(bread_kinds):
    bread_params = list(map(int, input().split()))
    bread_prices[i] = bread_params[0]
    bread_n[i] = bread_params[1]

for i in range(query_n):
    query = input().split()
    flag = True
    p_n = []
    sum = 0
    
    if query[0] == "buy":
        for j in range(bread_kinds):
            purchase_n = int(query[j + 1])
            
            if bread_n[j] < purchase_n:
                flag = False
                break
            
            p_n.append(purchase_n)
            
        if flag == False:
            print(-1)
            continue
        
        for j in range(bread_kinds):
            bread_n[j] -= p_n[j]
            sum += bread_prices[j] * p_n[j]
            
        print(sum)
            
    else:
        for j in range(bread_kinds):
            bread_n[j] += int(query[j + 1])
    