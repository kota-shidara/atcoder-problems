# 数字の文字列を受け取り、1文字ずつ配列に入れる
# 例；入力=> 0011 配列=>[0,0,1,1]
strings = gets.chomp.chars.map(&:to_i)

