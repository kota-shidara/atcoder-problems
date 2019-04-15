n, g = gets.chomp.split.map(&:to_i)
a = Array.new(n) { Array.new }

n.times do |i|
  a[i] = gets.chomp.split
end

# sum = 0
# for i in 0..n-1 do
#   if a[i][1] == 'JPY'
#     sum += a[i][0].to_i
#   else
#     sum += a[i][0].to_f * 380000.0
#   end
# end

sum = 0
a.each do |a|
  if a[1] == 'JPY'
    sum += a[0].to_i
  else
    sum += a[0].to_f * 380000.0
  end

end
puts sum