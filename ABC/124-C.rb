ns = gets.chomp.chars.map(&:to_i)
ns_num = ns.size
count = 0
(ns_num - 1).times do |i|
  if ns[i] == ns[i + 1]
    ns[i + 1] = ns[i] == 0 ? 1 : 0
    count += 1
  end
end
puts count