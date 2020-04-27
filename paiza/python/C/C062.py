# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

N = input()
cnt = 0
cool_time = 0

for i in range(int(N)):
    food = input()
    
    if cool_time == 0 and food == 'melon':
        cool_time += 10
        cnt += 1
    elif cool_time != 0:
        cool_time -=1

print(cnt)
