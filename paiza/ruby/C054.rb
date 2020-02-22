# 標準入力から値を取得してinput_lineに入れる

def input
    gets.chomp.split.map!(&:to_i)
end

flag = false

ipt = input
N = ipt[0]
border = ipt[1]

t_x0 = input
t_i = t_x0[0]
x_i = t_x0[1]

(N - 1).times do |i|

  t_xi1 = input
  t_i1 = t_xi1[0]
  x_i1 = t_xi1[1]
   
  ave_v = (x_i1 - x_i).to_f / (t_i1 - t_i).to_f
   
  if ave_v > border
      flag = true
      break
  end
   
  t_i = t_i1
  x_i = x_i1
end

puts flag == true ? 'YES' : 'NO'
