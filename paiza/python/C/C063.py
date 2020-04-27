# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

N = int(input())

FloweringDay = []

for i in range(N):
    FloweringDay.append(sum(list(map(int, input().split()))))

max_n = 0

for day in list(set(FloweringDay)):
    flower_n = FloweringDay.count(day)
    if flower_n > max_n:
        max_n = flower_n
        max_day = day

print(max_day)
