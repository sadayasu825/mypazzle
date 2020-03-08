def clock_calc(time, diff)
    time_ary = time.split(':').map!(&:to_i)
    diff_ary = diff.split.map!(&:to_i)

    res = ((time_ary[0] + diff_ary[0]) * 60 + (time_ary[1] + diff_ary[1])) % (24 * 60)
    res = res > 0 ? res : res + (24 * 60)

    (res / 60).to_s.rjust(2, '0') + ':' + (res % 60).to_s.rjust(2, '0')

end

# clock_calc(time, diff)
# time・・・現在時間（例　13:43　24h時間）
# diff・・・ずらす時間（例　1 24）（時と分の間はスペース、ずらさない場合は0を入力、戻したいときはマイナスをつける）
p clock_calc('02:35', '-2 0')


