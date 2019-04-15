# まだ解けていない
n, k = gets.split.map(&:to_i)
ss = gets.chomp.chars.map(&:to_i)

# 初めて0が出てくる場所を特定
def first_zero_check(array)
  first_zero_check = 0
  count_zero = 0
  first_zero_position = nil
  while count_zero < 1 do
    if array[first_zero_check] == 1
      first_zero_check += 1
    else
      first_zero_position = first_zero_check
      count_zero = 1
    end
  end
  first_zero_position
end

# 初めて0が出てきてから、1回目の1が出てくる場所を特定
def first_one_check(array)
  first_one_check = first_zero_check(array)
  count_one2 = 0
  first_one_position = nil
  while count_one2 < 1 do
    if array[first_one_check] == 0
      first_one_check += 1
    else
      count_one2 += 1
      first_one_position = first_one_check
      first_one_check += 1
    end
  end
  first_one_position
end

# 初めて0が出てきてから、2回目の1が出てくる場所を特定
def second_one_check(array)
  second_one_check = first_zero_check(array)
  count_one = 0
  second_one_position = nil
  while count_one < 2 do
    if array[second_one_check] == 0
      second_one_check += 1
    else
      count_one += 1
      second_one_position = second_one_check
      second_one_check += 1
    end
  end
  second_one_position
end

# k-1回同じタスクを行う
(k-1).times do
  first_zero_check(ss).upto(second_one_check(ss) - 1) do |i|
    ss[i] = ss[i] == 0 ? 1 : 0
  end
end

# 最後のタスク
first_zero_check(ss).upto(first_one_check(ss) - 1) do |i|
  ss[i] = 1
end

ans = 0
check_position = 0
finish = 0
while finish == 0
  if ss[check_position] == 1
    ans += 1
    check_position += 1
  else
    finish = 1
  end
end

puts ans