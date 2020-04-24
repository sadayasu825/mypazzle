# coding: utf-8
# 自分の得意な言語で
# Let's チャレンジ！！

import math

ipt = list(map(int, input().split()))

N = ipt[0]
q_n = ipt[1]

point = 100 / q_n

for i in range(N):
    student_params = list(map(int, input().split()))
    submission_date = student_params[0]
    correct_answers = student_params[1]
    
    if submission_date <= 0:
        score = point * correct_answers
    elif submission_date <= 9:
        score = math.floor(point * correct_answers * 0.8)
    else:
        score = 0
        
    if score >= 80:
        print('A')
    elif score >= 70:
        print('B')
    elif score >= 60:
        print('C')
    else:
        print('D')