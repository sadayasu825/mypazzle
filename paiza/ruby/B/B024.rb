# 標準入力から値を取得してinput_lineに入れる

r = gets.chomp.to_f

y = -1
cnt = 0
flag = true


while true do
    
    if flag == false
        break
    end
    
    y += 1
    x = -1
    flag = false
    
    while true do
        x += 1
        
        if (x**2 + y**2) < r**2
            cnt += 1
            flag = true
        else
            break
        end
        
    end
end

p cnt * 4

