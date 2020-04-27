# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

ipt = list(map(int, input().split()))

N = ipt[0]
x = ipt[1]
y = ipt[2]

max_x = x

for i in range(N):
    dxdy = list(map(int, input().split()))
    
    dx = dxdy[0]
    dy = dxdy[1]
    
    x += dx
    if x > max_x:
        max_x = x
    
    y += dy
    if y <= 0:
        break

print(max_x)