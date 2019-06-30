w, h, x, y = gets.split.map(&:to_f)
count = 0
if x == (w / 2.0) && (y == h / 2.0)
  count = 1
end
puts "#{(w * h / 2)} #{count}"