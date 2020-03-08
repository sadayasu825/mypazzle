A = '3 2'
B = '4 1'
C = '833 897 901 925'
D = '870 855'

def match(one, two, hash)
    hash[one] < hash[two] ? one : two
end

fst_1 = A.split(' ')
fst_2 = B.split(' ')
fst_times = C.split(' ')
scn_times = D.split(' ')

hash = {}
hash2 = {}
nxt = []

for i in 1..4 
    hash[i] = fst_times[i-1].to_i
end

nxt.push(match(fst_1[0].to_i, fst_1[1].to_i, hash))
nxt.push(match(fst_2[0].to_i, fst_2[1].to_i, hash))

nxt.sort!

if scn_times[0].to_i < scn_times[1].to_i
    p nxt[0]
    p nxt[1]
elsif 
    p nxt[1]
    p nxt[0]
end