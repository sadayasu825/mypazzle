# 標準入力から値を取得してinput_lineに入れる

def direction_cal(next_direction)
    if next_direction == 4
        0
    elsif next_direction == -1
        3
    else
        next_direction
    end
end


def coodinate_cal(i, j, direction)
    if direction == 0
        [i - 1, j]
    elsif direction == 1
        [i, j + 1]
    elsif direction == 2
        [i + 1, j]
    else
        [i, j - 1]
    end
end

ipt = gets.chomp.split.map!(&:to_i)
N = ipt[0]
M = ipt[1]

xy0 = gets.chomp.split.map!(&:to_i)
x0 = xy0[0]
y0 = xy0[1]

houses = []

N.times do |k|
    houses << gets.chomp.split('')
end

i = x0 - 1
j = y0 - 1
direction = 0

while (i < N) && (j < M) do
    
    if houses[i][j] == '*'
        
        houses[i][j] = '.'
        direction = direction_cal(direction - 1)
        
    else
        
        houses[i][j] = '*'
        direction = direction_cal(direction + 1)
    
    end

    i = (coodinate_cal(i, j, direction))[0]
    j = (coodinate_cal(i, j, direction))[1]
    
end

houses.each do |ary|
    puts ary.join
end
        
        