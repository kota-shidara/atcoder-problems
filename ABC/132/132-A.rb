letters = gets.chomp.chars
judge = 0
uniqletters = letters.uniq
judge += 1 if uniqletters.count != 2
uniqletters.each do |s|
  if letters.count(s) != 2
    judge += 1
  end
end
puts judge == 0 ? "Yes" : "No"