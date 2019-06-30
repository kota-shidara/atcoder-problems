n, k = gets.split.map(&:to_i)
ans = []
part1 = [1]
part2 = [(n - k + 1)]
k.times do |i|
  if i <= (n - k)
    a = part1[i] * part2[i]
    ans << a % 1000000007
    part1 << part1[i]*(k - i - 1)/(i + 1)
    part2 << part2[i]*(n - k - i)/(i + 2)
  else
    ans << 0
  end
end
puts ans