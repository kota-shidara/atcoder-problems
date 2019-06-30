n = gets.chomp.to_i
nums = gets.split.map(&:to_i)
ans = 0
(n - 2).times do |i|
  if (nums[i] < nums[i + 1] && nums[i + 1] < nums[i + 2]) || (nums[i] > nums[i + 1] && nums[i + 1] > nums[i + 2])
    ans += 1
  end
end
puts ans