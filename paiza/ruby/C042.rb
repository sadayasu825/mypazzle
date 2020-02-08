# 自分の得意な言語で
# Let's チャレンジ！！

N = gets.chomp.to_i
arr = []

N.times{|j|
    arr.push([])
}

N.times{|k|
    arr[k][k] = '-'
}

((N**2-N)/2).times{|i|
    res = gets.chomp
    win = res[0].to_i
    los = res[2].to_i
    
    arr[win-1][los-1] = 'W'
    arr[los-1][win-1] = 'L'
}

N.times{|m|
    puts arr[m].join(' ')
}

