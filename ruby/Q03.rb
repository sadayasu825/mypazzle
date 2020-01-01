N = 100
cards = Array.new(N, 0)

N.times{|n|
    i = n + 1
    while i <= N - 1
        cards[i] = (cards[i] - 1).abs
        i += n + 2
    end
}

N.times{|m|
    puts m + 1 if cards[m] == 0
}