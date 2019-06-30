n, x = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
position = 0
count =  1
n.times do |i|
  position += ls[i]
  if position <= x
    count += 1
  else
    break
  end
end
puts count