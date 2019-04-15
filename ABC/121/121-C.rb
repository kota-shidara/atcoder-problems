N, M = gets.split.map(&:to_i)
a = []
N.times { a << Array.new(gets.split.map(&:to_i)) }
a.sort! { |a, b| a[0] <=> b[0] }
remain = M
i = 0
total_pay = 0
while remain > 0 do
  if remain > a[i][1]
    total_pay += a[i][1] * a[i][0]
    remain -= a[i][1]
    i += 1
  else
    total_pay += remain * a[i][0]
    remain = 0
  end
end
puts total_pay