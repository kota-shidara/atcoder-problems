n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
array = [as[0]]
(n - 1).times do |i|
  array << array[i] + as[i + 1]
end
count = array.count { |num| num >= k }
(n - 1).times do |i|
  (n - 1 - i).times do |j|
    if (array[i + 1 + j] - array[i]) >= k
      count += (n - 1 - i - j)
      break
    end
  end
end
puts count