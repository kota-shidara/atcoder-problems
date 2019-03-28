a, b, k = gets.split.map(&:to_i)
a_divisor = []
a_b_divisor = []
a.times do |i|
  a_divisor << i + 1 if a % (i + 1) == 0
end
a_divisor.each do |j|
  a_b_divisor << j if b % j == 0
end
puts a_b_divisor[a_b_divisor.length - k]