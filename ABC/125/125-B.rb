n = gets.chomp.to_i
vs = gets.chomp.split.map(&:to_i)
cs = gets.chomp.split.map(&:to_i)
ans = 0
n.times do |i|
  value = vs[i] - cs[i]
  ans += value if value >= 0
end
puts ans
