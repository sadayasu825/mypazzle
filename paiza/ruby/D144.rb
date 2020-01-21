# you will have a binary of five figures, like '01101'.
# you get the binary as a string from the standard input.
# output the binary as a decimal.

input = gets(chomp: true)
dec = 0

1.upto(input.length){|i|
    dec += input.slice(i - 1).to_i * 2**(input.length - i)
}

p dec


a = 'abcdef'
# p a.slice!(1)
p 'abcdef'.slice!(1)

def bin_to_dec(bin_length, char_bin)
    
    if bin_length == 0
        p dec
    else
        re_char_bin = char_bin.reverse
        p re_char_bin
        p bin_length
        dec += re_char_bin.slice(bin_length - 1).to_i * 2**(bin_length - 1)
        
        char_bin = re_char_bin.slice!(bin_length - 1).reverse
        bin_length = char_bin.length
        bin_to_dec(bin_length, char_bin)
    end
end

# dec = 0
# bin_to_dec(input.length, input)