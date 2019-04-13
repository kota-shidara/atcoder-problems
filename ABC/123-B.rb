times = []
5.times { times << gets.to_i}
# ceilメソッドを使ったときにREになったのでゴリ押し
ceils = times.map do |time|
  if time % 10 != 0
    time += 10- time % 10
  else
    time
  end
end
lastdif = [times, ceils].transpose.map{|a| a.inject(:-) }.min
ans = ceils.inject(:+) + lastdif
puts ans