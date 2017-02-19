def describe(name)
  name = name.dup # 複製
  puts "This is a #{name}"
  name[2] = ?p
  puts "This is a #{name}"
end

CATTLE = "yahoo"
describe(CATTLE)
# 複製したので影響ない
p CATTLE
