# 自分の得意な言語で
# Let

ipt = gets.chomp.split(/[\/| |:]/)

MM = ipt[0]
dd = ipt[1].to_i
hh = ipt[2].to_i
mm = ipt[3]

new_hh = (hh - 24 * (hh / 24)).to_s.rjust(2, '0')
new_dd = (dd + (hh / 24)).to_s

puts MM + '/' + new_dd + ' ' + new_hh + ':' + mm