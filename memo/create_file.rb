require 'fileutils'
n = gets.to_i
FileUtils.mkdir_p("./ABC/#{n}")
["A", "B", "C", "D"].each do |letter|
  FileUtils.touch("./ABC/#{n}/#{n}-#{letter}.rb")
end