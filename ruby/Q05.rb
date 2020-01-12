money = 1000
max_500 = money.div(500)
max_100 = money.div(100)
max_50 = money.div(50)
max_10 = money.div(10)

count = 0
0.upto(max_500){|num_500|
    0.upto(max_100){|num_100|
        0.upto(max_50){|num_50|
            0.upto(max_10){|num_10|
                if (500*num_500 + 100*num_100 + 50*num_50 + 10*num_10) == money && 
                    (num_500 + num_100 + num_50 + num_10) <= 15 then
                    count += 1
                end
            }
        }
    }
}
puts count.to_s + '通り'