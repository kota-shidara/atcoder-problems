n, d = gets.split.map(&:to_i)
ans = (n.to_f / (2 * d + 1)).ceil
puts ans