n = gets.chomp.to_i
array = []
n.times { array << gets.to_i }
ordered_array = array.sort
n.times do |i|
  if ordered_array[n - 1] == array[i]
    puts ordered_array[n - 2]
  else
    puts ordered_array[n - 1]
  end
end