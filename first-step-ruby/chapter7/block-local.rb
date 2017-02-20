a = "str"
[1,2,3].each{|a| p a} # "str"の入ったaとは別
p a

a, b = "str", "ing"
[1,2,3].each do |i; a, b|
  a, b = 1, 2 # 外側のa, bには影響しない
end
p a, b

(1..10).each do |i|
  last_odd = i if i%2 != 0
end
# p last_odd # NameError

last_odd = nil
(1..10).each do |i|
  last_odd = i if i%2 != 0
end
p last_odd
