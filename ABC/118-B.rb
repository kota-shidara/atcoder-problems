n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n) { Array.new }

n.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
  a[i] = a[i].slice(1..a[i].size)
end

answer = 0
for i in 1 .. m do
  like_count = 0
  for j in 0..n-1 do
    if a[j].include?(i)
      like_count += 1
    end
  end
  if like_count == n
    answer += 1
  end
end
puts answer
